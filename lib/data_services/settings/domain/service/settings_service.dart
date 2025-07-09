import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/settings/data/repositories/settings_repositories.dart';
import 'package:tetbee__base/database_service/error_handling/api_service_mixin.dart';
import 'package:tetbee__base/database_service/error_handling/failures.dart';
import 'package:tetbee__base/models/common/feedback_form.dart';

final SettingsService settingsService = SettingsService();

class SettingsService with ApiServiceMixin {
  Future<Either<Failure, String>> submitFeedback(
    String userId,
    FeedbackForm feedbackForm,
  ) async {
    return execute(
      () => SettingsRepository().submitFeedback(userId, feedbackForm),
      'Error while submitFeedback',
    );
  }
}
