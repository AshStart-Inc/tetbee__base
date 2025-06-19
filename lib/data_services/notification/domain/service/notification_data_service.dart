import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/notification/data/repository/notification_repository.dart';
import 'package:tetbee__base/database_service/error_handling/api_service_mixin.dart';
import 'package:tetbee__base/database_service/error_handling/failures.dart';
import 'package:tetbee__base/models/availability/availability_receiver.dart';
import 'package:tetbee__base/models/common/notification_center.dart';

final NotificationDataService notificationDataService =
    NotificationDataService();

class NotificationDataService with ApiServiceMixin {
  Future<Either<Failure, NotificationCenter?>> getNotificationCenter(
    String userId,
  ) async {
    return execute(
      () => NotificationRepository().getNotificationCenter(userId),
      'Error while getNotificationCenter',
    );
  }
}
