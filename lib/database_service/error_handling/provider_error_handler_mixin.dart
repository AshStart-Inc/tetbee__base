import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tetbee__base/database_service/error_handling/error_context.dart';
import 'package:tetbee__base/database_service/error_handling/failures.dart';
import 'package:tetbee__base/dialog/custom_dialog.dart';
import 'package:tetbee__base/utils/enums.dart';

mixin ProviderErrorHandlerMixin on ChangeNotifier {
  bool _isLoading = false;
  bool _isSaving = false;
  bool _hasError = false;
  bool _isSuccess = true;
  String? _errorMessage;
  bool get isLoading => _isLoading;
  bool get isSaving => _isSaving;
  bool get hasError => _hasError;
  bool get isSuccess => _isSuccess;
  String? get errorMessage => _errorMessage;

  void setLoading() {
    _isLoading = true;
    _hasError = false;
    _isSaving = false;
    _isSuccess = true;
    _errorMessage = null;
    notifyListeners();
  }

  void setSaving() {
    _isLoading = false;
    _hasError = false;
    _isSaving = true;
    _isSuccess = true;
    _errorMessage = null;
    notifyListeners();
  }

  void setError(String errorMessage) {
    _isLoading = false;
    _hasError = true;
    _isSaving = false;
    _isSuccess = false;
    _errorMessage = errorMessage;
    notifyListeners();
  }

  void setSuccess() {
    _isLoading = false;
    _hasError = false;
    _isSaving = false;
    _isSuccess = true;
    _errorMessage = null;
    notifyListeners();
  }

  Future<Either<Failure, E>> execute<E>(
    Future<Either<Failure, E>> Function() supplier, {
    Function(E response)? onSuccess,
    String? successMassage,
    Function(ErrorContextFailure error)? onFailure,
    String? errorMessage,
  }) async {
    try {
      final Either<Failure, E> response = await supplier.call();

      return response.fold((error) => throw error, (E data) {
        if (successMassage != null && successMassage.isNotEmpty) {
          CustomDialog.showToast(successMassage);
        }
        onSuccess?.call(data);

        return Right(data);
      });
    } on ApiFailure catch (apiFailure, stackTrace) {
      ErrorContextFailure error = ErrorContextFailure(
        ErrorContext(
          errorCode: apiFailure.errorCode,
          message: apiFailure.errorMessage,
          error: apiFailure,
          stackTrace: stackTrace,
        ),
      );

      if (error.errorMessage.isNotEmpty) {
        CustomDialog.showToast(error.errorMessage);
      }

      onFailure?.call(error);

      return Left(error);
    } on HttpFailure catch (httpFailure, stackTrace) {
      ErrorContextFailure error = ErrorContextFailure(
        ErrorContext(
          errorCode: httpFailure.errorCode,
          message: httpFailure.errorMessage,
          error: httpFailure,
          stackTrace: stackTrace,
        ),
      );

      if (error.errorMessage.isNotEmpty) {
        CustomDialog.showToast(error.errorMessage);
      }

      onFailure?.call(error);

      return Left(error);
    } on ErrorContextFailure catch (error) {
      if (error.errorMessage.isNotEmpty) {
        CustomDialog.showToast(error.errorMessage);
      }

      onFailure?.call(error);

      return Left(error);
    } catch (e, stackTrace) {
      ErrorContextFailure error = ErrorContextFailure(
        ErrorContext(
          errorCode: ErrorCode.unknownError,
          message: errorMessage ?? '',
          error: e,
          stackTrace: stackTrace,
        ),
      );

      if (error.errorMessage.isNotEmpty) {
        CustomDialog.showToast(error.errorMessage);
      }

      onFailure?.call(error);

      return Left(error);
    }
  }
}
