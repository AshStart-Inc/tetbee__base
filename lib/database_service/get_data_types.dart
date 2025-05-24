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
    case DataModel.userModel:
      return [dataModel.name];
    case DataModel.workPlace:
      return [dataModel.name];
    case DataModel.chatRoom:
      return [dataModel.name];
    case DataModel.availabilityReceiver:
      return [
        dataModel.name,
        docId!, //placeId
      ];
    case DataModel.joinRequest:
      return [
        dataModel.name, docId!, //placeId
      ];
  }
}
