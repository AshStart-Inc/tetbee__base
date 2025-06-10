import 'dart:io';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:tetbee__base/tetbee__base.dart';

mixin ApiHandlingMixin {
  Future<ApiResponse<T>> executeFirebaseFunction<T>(
    String apiPath,
    Map<String, dynamic> data,
  ) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      apiPath,
    );
    return await callable.call(data).then((HttpsCallableResult value) async {
      if (value.data['statusCode'] == HttpStatus.badRequest) {
        return ApiResponse<T>(
          data: null,
          message: value.data['message'],
          statusCode: HttpStatus.badRequest,
        );
      }

      return ApiResponse<T>(
        data: value.data['data'],
        statusCode: value.data['statusCode'],
        message: value.data['message'],
      );
    });
  }
}
