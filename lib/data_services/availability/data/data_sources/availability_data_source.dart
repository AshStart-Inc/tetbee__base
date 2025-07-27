import 'package:tetbee__base/data_services/availability/data/availability_api.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/availability/availability_reminder_request.dart';
import 'package:tetbee__base/models/availability/user_availabilities.dart';
import 'package:tetbee__base/models/models.dart';

class AvailabilityDataSource with ApiErrorHandlerMixin {
  Future<String> createAvailabilityReceiver(
    String userId,
    String placeId,
    AvailabilityReceiver availbilityReceiver,
  ) async {
    return execute(
      () => AvailabilityApi.createAvailabilityReceiver(
        userId,
        placeId,
        availbilityReceiver,
      ),
    );
  }

  Future<String> submitAvailability(
    AvailabilityReceiver availabilityReceiver,
    String userId,
    String placeId,
    UserAvailabilities userAvailabilities,
  ) async {
    return execute(
      () => AvailabilityApi.submitAvailability(
        availabilityReceiver,
        userId,
        placeId,
        userAvailabilities,
      ),
    );
  }

  Future<bool> updateAvailabilityReceiver(
    AvailabilityReceiver availabilityReceiver,
    String userId,
    String placeId,
    Map<String, dynamic> updatedData,
  ) async {
    return execute(
      () => AvailabilityApi.updateAvailabilityReceiver(
        availabilityReceiver,
        userId,
        placeId,
        updatedData,
      ),
    );
  }

  Future<List<UserAvailabilities>> getUserAvailabilities(
    String placeId,
    String availabilityId,
  ) async {
    return execute(
      () => AvailabilityApi.getUserAvailabilities(placeId, availabilityId),
    );
  }

  Future<UserAvailabilities?> getUserAvailability(
    String userId,
    String placeId,
    String availabilityId,
  ) async {
    return execute(
      () =>
          AvailabilityApi.getUserAvailability(userId, placeId, availabilityId),
    );
  }

  Future<AvailabilityReceiver?> getAvailabilityReceiver(
    String placeId,
    String availabilityId,
  ) async {
    return execute(
      () => AvailabilityApi.getAvailabilityReceiver(placeId, availabilityId),
    );
  }

  // my preset time

  Future<String> createMyPresetAvailability(
    MyPresetAvailability myPresetAvailability,
    String userId,
    String placeId,
  ) async {
    return execute(
      () => AvailabilityApi.createMyPresetAvailability(
        myPresetAvailability,
        userId,
        placeId,
      ),
    );
  }

  Future<bool> updateMyPresetAvailability(
    MyPresetAvailability myPresetAvailability,
    String userId,
    String placeId,
  ) async {
    return execute(
      () => AvailabilityApi.updateMyPresetAvailability(
        myPresetAvailability,
        userId,
        placeId,
      ),
    );
  }

  Future<List<MyPresetAvailability>> getMyPresetAvailabilities(
    String userId,
    String placeId, {
    bool getSelected = false,
  }) async {
    return execute(
      () => AvailabilityApi.getMyPresetAvailabilities(
        userId,
        placeId,
        getSelected: getSelected,
      ),
    );
  }

  Future<bool> sendAvailabilityReminder(
    AvailabilityReminderRequest availabilityReminderRequest,
  ) async {
    return execute(
      () => AvailabilityApi().sendAvailabilityReminder(
        availabilityReminderRequest,
      ),
    );
  }
}
