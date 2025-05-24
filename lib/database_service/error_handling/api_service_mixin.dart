import 'package:dartz/dartz.dart';
import 'package:tetbee__base/database_service/error_handling/api_error.dart';
import 'package:tetbee__base/database_service/error_handling/error_context.dart';
import 'package:tetbee__base/database_service/error_handling/failures.dart';
import 'package:tetbee__base/database_service/error_handling/http_error.dart';
import 'package:tetbee__base/utils/enums.dart';

mixin ApiServiceMixin {
  Future<Either<Failure, E>> execute<E>(
    Future<E> Function() supplier,
    String errorMessage, [
    ErrorCode? Function(ApiError)? errorCodeResolver,
  ]) async {
    try {
      return Right(await supplier.call());
    } on ApiError catch (apiError) {
      return Left(
        ApiFailure(
          errorCodeResolver?.call(apiError) ?? ErrorCode.internalServerError,
          apiError,
        ),
      );
    } on HttpError catch (httpError) {
      return Left(HttpFailure(ErrorCode.httpServerError, httpError));
    } on ErrorContext catch (errorContext) {
      return Left(ErrorContextFailure(errorContext));
    } catch (e, stackTrace) {
      return Left(
        ErrorContextFailure(
          ErrorContext(
            errorCode: ErrorCode.unknownError,
            message: errorMessage,
            error: e,
            stackTrace: stackTrace,
          ),
        ),
      );
    }
  }
}
