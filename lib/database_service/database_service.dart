import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/database_service/api_response.dart';
import 'package:tetbee__base/database_service/data_model.dart';
import 'package:tetbee__base/database_service/get_data_filter.dart';
import 'package:tetbee__base/database_service/get_data_types.dart';
import 'package:tetbee__base/utils/helper.dart';

const String _childDefault = 'children';

class DatabaseService {
  static String filtersKey = 'filters';
  static String generatePath({String? overridenPath, List<String>? types}) {
    if (overridenPath != null) return overridenPath;

    if (types == null || types.isEmpty) {
      return '';
    }

    if (types.length == 1) {
      return types.first;
    } else {
      String type = types.first;
      for (String t in [...types.sublist(1)]) {
        type += '/$t/$_childDefault';
      }
      return type;
    }
  }

  static Future<ApiResponse<String>> write({
    required DataModel dataModel,
    required Map<String, dynamic> data,
    required String userId,
    List<String>? types,
    String? overridenPath,
    String? docId,
    bool useTransaction = false,
    bool useFilter = true,
  }) async {
    String fullpath =
        overridenPath ??
        (DatabaseService.generatePath(
          overridenPath: overridenPath,
          types: types ?? getDataTypes(dataModel),
        ));
    data['createdAt'] = Helpers.dateToJson(DateTime.now());
    data['createdBy'] = userId;
    data['updatedAt'] = Helpers.dateToJson(DateTime.now());
    data['updatedBy'] = userId;
    data['deleted'] = false;
    data['archived'] = false;
    if (useFilter) {
      List<String> filters = [];
      filters.addAll(getDataFilter(data, dataModel));
      data[filtersKey] = filters;
    }
    try {
      if (docId == null) {
        DocumentReference<Map<String, dynamic>> docRef = await FirebaseFirestore
            .instance
            .collection(fullpath)
            .add(data);
        return ApiResponse<String>(
          data: docRef.id,
          statusCode: HttpStatus.created,
        );
      } else {
        FirebaseFirestore.instance.collection(fullpath).doc(docId).set(data);

        return ApiResponse<String>(data: docId, statusCode: HttpStatus.created);
      }
    } catch (error) {
      return ApiResponse<String>(
        data: null,
        statusCode: HttpStatus.badRequest,
        message: error.toString(),
      );
    }
  }

  static Future<ApiResponse<T>> read<T>({
    List<String>? types,
    String? docId,
    String? overridenPath,
  }) async {
    try {
      String fullpath =
          overridenPath ??
          ('${DatabaseService.generatePath(overridenPath: overridenPath, types: types)}/$docId');
      final DocumentSnapshot doc =
          await FirebaseFirestore.instance.doc(fullpath).get();

      if (!doc.exists) {
        return ApiResponse<T>(data: null, statusCode: HttpStatus.ok);
      }
      return ApiResponse<T>(data: parseData<T>(doc), statusCode: HttpStatus.ok);
    } catch (error) {
      return ApiResponse(
        data: null,
        statusCode: HttpStatus.badRequest,
        message: error.toString(),
      );
    }
  }

  static Future<ApiResponse<List<T>>> readDocuments<T>({
    List<String>? types,
    required List<String> ids,
  }) async {
    try {
      final snapshot =
          await FirebaseFirestore.instance
              .collection(DatabaseService.generatePath(types: types))
              .where(FieldPath.documentId, whereIn: ids)
              .get();
      return ApiResponse<List<T>>(
        data: [...snapshot.docs.map((doc) => parseData<T>(doc))],
        statusCode: HttpStatus.ok,
      );
    } catch (error) {
      return ApiResponse(
        data: null,
        statusCode: HttpStatus.badRequest,
        message: error.toString(),
      );
    }
  }

  static Future<ApiResponse<List<T>>> getAllDocuments<T>({
    List<String>? types,
    String? overridenPath,
    Future<QuerySnapshot<Map<String, dynamic>>> Function(String path)?
    queryBuilder,
  }) async {
    try {
      String fullpath =
          overridenPath ??
          (DatabaseService.generatePath(
            overridenPath: overridenPath,
            types: types,
          ));
      final QuerySnapshot<Map<String, dynamic>> doc =
          queryBuilder == null
              ? await FirebaseFirestore.instance.collection(fullpath).get()
              : await queryBuilder.call(fullpath);
      return ApiResponse(
        data: doc.docs.map((doc) => parseData<T>(doc)).toList(),
        statusCode: HttpStatus.badRequest,
      );
    } catch (error) {
      return ApiResponse(
        data: null,
        statusCode: HttpStatus.badRequest,
        message: error.toString(),
      );
    }
  }

  static Future<ApiResponse<bool>> update({
    required DataModel dataModel,
    required Map<String, dynamic> baseData,
    Map<String, dynamic>? updatedData,
    required List<String>? types,
    required String docId,
    required String userId,
    bool useTransaction = false,
    bool useFilter = true,
  }) async {
    try {
      Map<String, dynamic> data = {...(updatedData ?? baseData)};
      String fullpath =
          ('${DatabaseService.generatePath(overridenPath: null, types: types ?? getDataTypes(dataModel))}/$docId');
      data['updatedAt'] = Helpers.dateToJson(DateTime.now());
      data['updatedBy'] = userId;
      if (useFilter) {
        List<String> filters = [];
        filters.addAll(getDataFilter(baseData, dataModel));
        data[filtersKey] = filters;
      }
      if (useTransaction) {
        await FirebaseFirestore.instance.runTransaction((transaction) async {
          transaction.set(FirebaseFirestore.instance.doc(fullpath), data);
        });
      } else {
        await FirebaseFirestore.instance.doc(fullpath).update(data);
      }

      return ApiResponse<bool>(
        data: true,
        statusCode: HttpStatus.ok,
        message: 'Successfully updated $fullpath',
      );
    } catch (error) {
      return ApiResponse<bool>(
        data: null,
        statusCode: HttpStatus.badRequest,
        message: error.toString(),
      );
    }
  }

  static dynamic getQuery({List<String>? types, String? docId}) {
    String fullpath =
        (generatePath(overridenPath: null, types: types) +
            (docId == null ? '' : '/$docId'));
    return docId != null
        ? FirebaseFirestore.instance.doc(fullpath)
        : FirebaseFirestore.instance.collection(fullpath);
  }
}
