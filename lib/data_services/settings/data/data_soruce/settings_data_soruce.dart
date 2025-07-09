import 'package:tetbee__base/data_services/settings/data/settings_apis.dart';
import 'package:tetbee__base/database_service/error_handling/api_error_handler_mixin.dart';
import 'package:tetbee__base/models/common/feedback_form.dart';

class SettingsDataSource with ApiErrorHandlerMixin {
  Future<String> submitFeedback(
    String userId,
    FeedbackForm feedbackForm,
  ) async {
    return execute(() => SettingsApis.submitFeedback(userId, feedbackForm));
  }
}
