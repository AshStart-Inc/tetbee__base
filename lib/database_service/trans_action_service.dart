import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/database_service/database_service.dart';
import 'package:tetbee__base/tetbee__base.dart';
import 'package:tetbee__base/utils/helper.dart';
import 'package:uuid/uuid.dart';

enum FirebaseTransactionType { write, read, update, delete }

class TransactionDataModel {
  TransactionDataModel({
    required this.ref,
    required this.data,
    required this.type,
  });

  final DocumentReference ref;
  final FirebaseTransactionType type;
  final Map<String, dynamic>? data;

  static Future<ApiResponse<bool>> run(
    List<TransactionDataModel> transactionDataModels,
  ) async {
    try {
      await FirebaseFirestore.instance.runTransaction((Transaction tx) async {
        for (TransactionDataModel transaction in transactionDataModels) {
          switch (transaction.type) {
            case FirebaseTransactionType.read:
            case FirebaseTransactionType.write:
              tx.set(transaction.ref, transaction.data);
            case FirebaseTransactionType.update:
              tx.update(transaction.ref, transaction.data ?? {});
            case FirebaseTransactionType.delete:
              tx.delete(transaction.ref);
          }
        }
      });
      return ApiResponse<bool>(
        data: true,
        message: 'Trasnaction completed',
        statusCode: HttpStatus.badRequest,
      );
    } catch (e) {
      return ApiResponse<bool>(
        data: false,
        message: e.toString(),
        statusCode: HttpStatus.badRequest,
      );
    }
  }

  static TransactionDataModel getDocumentTransactionDataForWrite({
    required String userId,
    required Map<String, dynamic> dataModel,
    String? overridenPath,
    String? docId,
    List<String>? types,
    List<String>? filters,
  }) {
    String docId0 = docId ?? const Uuid().v4();
    String fullpath =
        overridenPath ??
        ('${DatabaseService.generatePath(overridenPath: overridenPath, types: types)}/$docId0');
    return TransactionDataModel(
      ref: FirebaseFirestore.instance.doc(fullpath),
      type: FirebaseTransactionType.write,
      data: {
        ...dataModel,
        'createdBy': userId,
        'createdAt': Helpers.dateToJson(DateTime.now()),
        'updatedAt': Helpers.dateToJson(DateTime.now()),
        'path': fullpath,
        'filters': filters,
      },
    );
  }

  static TransactionDataModel getDocumentTransactionDataForUpdate({
    required String userId,
    required Map<String, dynamic> dataModel,
    String? overridenPath,
    required String docId,
    List<String>? types,
    List<String>? filters,
  }) {
    String docId0 = docId;
    String fullpath =
        overridenPath ??
        ('${DatabaseService.generatePath(overridenPath: overridenPath, types: types)}/$docId0');
    return TransactionDataModel(
      ref: FirebaseFirestore.instance.doc(fullpath),
      type: FirebaseTransactionType.update,
      data:
          filters == null
              ? {
                ...dataModel,
                'updatedBy': userId,
                'updatedAt': Helpers.dateToJson(DateTime.now()),
              }
              : {
                ...dataModel,
                'updatedBy': userId,
                'updatedAt': Helpers.dateToJson(DateTime.now()),
                'filters': filters,
              },
    );
  }

  static TransactionDataModel getDocumentTransactionDataForRead({
    String? overridenPath,
    String? docId,
    List<String>? types,
  }) {
    String docId0 = docId ?? const Uuid().v4();
    String fullpath =
        overridenPath ??
        ('${DatabaseService.generatePath(overridenPath: overridenPath, types: types)}/$docId0');

    return TransactionDataModel(
      ref: FirebaseFirestore.instance.doc(fullpath),
      type: FirebaseTransactionType.read,
      data: null,
    );
  }

  static TransactionDataModel getDocumentTransactionDataForDelete({
    String? overridenPath,
    String? docId,
    List<String>? types,
  }) {
    String docId0 = docId ?? const Uuid().v4();
    String fullpath =
        overridenPath ??
        ('${DatabaseService.generatePath(overridenPath: overridenPath, types: types)}/$docId0');

    FirebaseFirestore.instance.doc(fullpath).delete();
    return TransactionDataModel(
      ref: FirebaseFirestore.instance.doc(fullpath),
      type: FirebaseTransactionType.delete,
      data: null,
    );
  }
}
