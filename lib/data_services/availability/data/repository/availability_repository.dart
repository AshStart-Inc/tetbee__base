import 'package:tetbee__base/data_services/availability/data/data_sources/availability_data_source.dart';
import 'package:tetbee__base/models/availability/availability_reminder_request.dart';
import 'package:tetbee__base/models/availability/user_availabilities.dart';
import 'package:tetbee__base/models/models.dart';

class AvailabilityRepository {
  Future<String> createAvailabilityReceiver(
    String userId,
    String placeId,
    AvailabilityReceiver availbilityReceiver,
  ) async {
    return await AvailabilityDataSource().createAvailabilityReceiver(
      userId,
      placeId,
      availbilityReceiver,
    );
  }

  Future<String> submitAvailability(
    AvailabilityReceiver availabilityReceiver,
    String userId,
    String placeId,
    UserAvailabilities userAvailabilities,
  ) async {
    return await AvailabilityDataSource().submitAvailability(
      availabilityReceiver,
      userId,
      placeId,
      userAvailabilities,
    );
  }

  Future<bool> updateAvailabilityReceiver(
    AvailabilityReceiver availabilityReceiver,
    String userId,
    String placeId,

    Map<String, dynamic> updatedData,
  ) async {
    return await AvailabilityDataSource().updateAvailabilityReceiver(
      availabilityReceiver,
      userId,
      placeId,
      updatedData,
    );
  }

  Future<List<UserAvailabilities>> getUserAvailabilities(
    String placeId,
    String availabilityId,
  ) async {
    return await AvailabilityDataSource().getUserAvailabilities(
      placeId,
      availabilityId,
    );
  }

  Future<UserAvailabilities?> getUserAvailability(
    String userId,
    String placeId,
    String availabilityId,
  ) async {
    return await AvailabilityDataSource().getUserAvailability(
      userId,
      placeId,
      availabilityId,
    );
  }

  Future<AvailabilityReceiver?> getAvailabilityReceiver(
    String placeId,
    String availabilityId,
  ) async {
    return await AvailabilityDataSource().getAvailabilityReceiver(
      placeId,
      availabilityId,
    );
  }

  Future<String> createMyPresetAvailability(
    MyPresetAvailability myPresetAvailability,
    String userId,
    String placeId,
  ) async {
    return await AvailabilityDataSource().createMyPresetAvailability(
      myPresetAvailability,
      userId,
      placeId,
    );
  }

  Future<bool> updateMyPresetAvailability(
    MyPresetAvailability myPresetAvailability,
    String userId,
    String placeId,
  ) async {
    return await AvailabilityDataSource().updateMyPresetAvailability(
      myPresetAvailability,
      userId,
      placeId,
    );
  }

  Future<List<MyPresetAvailability>> getMyPresetAvailabilities(
    String userId,
    String placeId, {
    bool getSelected = false,
  }) async {
    return await AvailabilityDataSource().getMyPresetAvailabilities(
      userId,
      placeId,
      getSelected: getSelected,
    );
  }

  Future<bool> sendAvailabilityReminder(
    AvailabilityReminderRequest availabilityReminderRequest,
  ) async {
    return await AvailabilityDataSource().sendAvailabilityReminder(
      availabilityReminderRequest,
    );
  }
}
