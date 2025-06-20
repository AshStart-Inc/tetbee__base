import 'package:tetbee__base/database_service/data_model.dart';

List<String> getDataTypes(
  DataModel dataModel, {
  String? docId,
  String? docId2,
  String? docId3,
  String? docId4,
  dynamic additionValue,
}) {
  switch (dataModel) {
    case DataModel.appInfo:
      return [dataModel.name];
    case DataModel.notificationCenter:
      return [dataModel.name];
    case DataModel.userModel:
      return [dataModel.name];
    case DataModel.tempUserAvailabilities:
      return [dataModel.name];
    case DataModel.workPlace:
      return [dataModel.name];
    case DataModel.placePosition:
      return [
        dataModel.name,
        docId!, //placeId
      ];
    case DataModel.chatRoom:
      return [dataModel.name];
    case DataModel.message:
      return [
        DataModel.chatRoom.name,
        docId!, // chat room id
      ];
    case DataModel.availabilityReceiver:
      return [
        dataModel.name,
        docId!, //placeId
      ];

    case DataModel.scheduleContainer:
      return [
        dataModel.name,
        docId!, //placeId
      ];
    case DataModel.joinRequest:
      return [
        dataModel.name, docId!, //placeId
      ];
    case DataModel.userAvailabilities:
      return [
        dataModel.name, docId!, //placeId
        docId2!, // availability receiver Id
      ];

    case DataModel.workPlaceSchedulePresetTimes:
      return [dataModel.name];
    case DataModel.userSchedule:
      return [
        dataModel.name,
        docId!, //placeId
      ];

    case DataModel.appNotification:
      return [
        dataModel.name,
        docId!, // userId
      ];
    case DataModel.storedData:
      return [dataModel.name];
  }
}
