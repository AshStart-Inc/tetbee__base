import 'package:tetbee__base/data_services/notification/data/data_soruce/notification_data_source.dart';
import 'package:tetbee__base/models/common/notification_center.dart';

class NotificationRepository {
  Future<NotificationCenter?> getNotificationCenter(String userId) async {
    return await NotificationDataSource().getNotificationCenter(userId);
  }
}
