import 'package:tetbee__base/models/common/activity_log.dart';
import 'package:tetbee__base/tetbee__base.dart';

class SettingsApis {
  static Future<ApiResponse<String>> submitFeedback(
    String userId,
    FeedbackForm feedbackForm,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.feedbackForm),
      dataModel: DataModel.feedbackForm,
      userId: userId,
      data: feedbackForm.toJson(),
    );
  }

  static Future<ApiResponse<String>> createActivityLog(
    String userId,
    ActivityLog activityLog,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.activitylog),
      dataModel: DataModel.activitylog,
      userId: userId,
      data: activityLog.toJson(),
    );
  }
}
