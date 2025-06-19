import 'package:tetbee__base/data_services/notification/data/notification_api.dart';
import 'package:tetbee__base/database_service/error_handling/api_error_handler_mixin.dart';
import 'package:tetbee__base/models/common/notification_center.dart';

class NotificationDataSource with ApiErrorHandlerMixin {
  Future<NotificationCenter?> getNotificationCenter(String userId) async {
    return execute(() => NotificationApi.getNotificationCenter(userId));
  }
}
