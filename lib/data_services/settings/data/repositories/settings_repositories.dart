import 'package:tetbee__base/data_services/settings/data/data_soruce/settings_data_soruce.dart';
import 'package:tetbee__base/models/common/feedback_form.dart';

class SettingsRepository {
  Future<String> submitFeedback(
    String userId,
    FeedbackForm feedbackForm,
  ) async {
    return await SettingsDataSource().submitFeedback(userId, feedbackForm);
  }
}
