import 'package:tetbee__base/database_service/api_response.dart';
import 'package:tetbee__base/database_service/data_model.dart';
import 'package:tetbee__base/database_service/database_service.dart';
import 'package:tetbee__base/database_service/get_data_types.dart';
import 'package:tetbee__base/models/common/notification_center.dart';

class NotificationApi {
  static Future<ApiResponse<NotificationCenter?>> getNotificationCenter(
    String userId,
  ) async {
    return DatabaseService.read<NotificationCenter>(
      types: getDataTypes(DataModel.notificationCenter),
      docId: userId,
    );
  }
}
