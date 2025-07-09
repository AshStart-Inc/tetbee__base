import 'package:tetbee__base/tetbee__base.dart';

class SettingsApis {
  static Future<ApiResponse<String>> submitFeedback(
    String userId,
    FeedbackForm feedbackForm,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.feedbackForm),
      dataModel: DataModel.availabilityReceiver,
      userId: userId,
      data: feedbackForm.toJson(),
    );
  }
}
