import 'dart:convert';
import 'dart:io';

import 'package:tetbee__base/database_service/error_handling/api_error.dart';
// import 'package:tetbee__base/database_service/response.dart';
import 'package:dio/dio.dart';
import 'package:tetbee__base/database_service/error_handling/error_context.dart';
import 'package:tetbee__base/database_service/error_handling/http_error.dart';
import 'package:tetbee__base/database_service/response.dart';
import 'package:tetbee__base/utils/enums.dart';

mixin ApiErrorHandlerMixin {
  Future<T> execute<T>(Future<DataResponse<T>> Function() supplier) async {
    try {
      final DataResponse<T> response = await supplier.call();
      if (response.data != null) {
        return response.data!;
      } else {
        throw ApiError(
          error: response.message ?? '',
          statusCode: response.statusCode ?? HttpStatus.badRequest,
        );
      }
    } on DioException catch (err, stackTrace) {
      throw handleDioException(err, stackTrace);
    }
  }
}

ApiError handleDioException(DioException err, StackTrace stackTrace) {
  final Response? response = err.response;
  if (_isApiErrorResponse(response)) {
    final Map<String, dynamic> map = response!.data!;
    map['message'] = _toStringList(map['message']);
    return ApiError.fromJson(map);
  } else if (_isHttpErrorResponse(response)) {
    throw HttpError(
      error:
          response!.data is String
              ? jsonDecode(response.data!)['error']
              : response.data.error,
      statusCode: response.statusCode!,
      description: err.message ?? '',
    );
  }

  throw ErrorContext(
    errorCode: ErrorCode.unknownError,
    message: 'API invalid response ${err.error}: ${response?.data ?? response}',
    error: err,
    stackTrace: stackTrace,
  );
}

bool _isApiErrorResponse(Response? response) {
  if (response?.data is! Map<String, dynamic>) {
    return false;
  }

  final Map<String, dynamic> error =
      (response?.data ?? <String, dynamic>{}) as Map<String, dynamic>;

  return error.containsKey('error') &&
      error.containsKey('statusCode') &&
      error.containsKey('message');
}

bool _isHttpErrorResponse(Response? response) {
  try {
    final String? data = response?.toString();
    if (data == null) {
      return false;
    }
    Map<String, dynamic> error = jsonDecode(data) as Map<String, dynamic>;

    return error.containsKey('error') && (response?.statusCode ?? 0) >= 400;
  } catch (e) {
    return false;
  }
}

List<String> _toStringList(dynamic value) {
  if (value is List) {
    return value.map((item) => item.toString()).toList();
  }
  return [value.toString()];
}
