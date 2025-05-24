import 'package:tetbee__base/database_service/error_handling/api_error.dart';
import 'package:tetbee__base/database_service/error_handling/http_error.dart';
import 'package:tetbee__base/utils/enums.dart';

import 'error_context.dart';

abstract class Failure {
  ErrorCode get errorCode;

  String get errorMessage {
    if (this is ErrorContextFailure) {
      return (this as ErrorContextFailure).errorContext.message;
    } else if (this is ApiFailure) {
      final ApiError apiError = (this as ApiFailure).apiError;
      String message = apiError.error;
      return message;
    } else if (this is HttpFailure) {
      final HttpFailure failure = (this as HttpFailure);
      return '${failure.httpError.statusCode}: ${failure.httpError.error}';
    } else {
      return '$errorCode';
    }
  }
}

class ErrorContextFailure extends Failure {
  final ErrorContext errorContext;

  ErrorContextFailure(this.errorContext);

  @override
  String toString() {
    return 'ErrorContextFailure{errorContext: $errorContext}';
  }

  @override
  ErrorCode get errorCode => errorContext.errorCode;
}

class ApiFailure extends Failure {
  @override
  final ErrorCode errorCode;
  final ApiError apiError;

  ApiFailure(this.errorCode, this.apiError);

  @override
  String toString() {
    return 'ApiFailure{errorCode: $errorCode, apiError: $apiError}';
  }
}

class HttpFailure extends Failure {
  @override
  final ErrorCode errorCode;
  final HttpError httpError;

  HttpFailure(this.errorCode, this.httpError);

  @override
  String toString() {
    return 'HttpFailure{errorCode: $errorCode, httpError: $httpError}';
  }
}
