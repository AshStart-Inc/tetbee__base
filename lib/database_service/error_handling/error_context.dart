import 'package:tetbee__base/utils/enums.dart';

class ErrorContext implements Exception {
  final ErrorCode errorCode;
  final String message;
  final Object? error;
  final StackTrace? stackTrace;

  ErrorContext({
    required this.errorCode,
    required this.message,
    this.error,
    this.stackTrace,
  });

  @override
  String toString() {
    return 'ErrorContext{errorCode: $errorCode, message: $message, error: $error, stackTrace: $stackTrace}';
  }
}
