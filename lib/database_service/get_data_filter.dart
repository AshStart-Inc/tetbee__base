import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tetbee__base/models/work_place/join_request.dart';
import 'package:tetbee__base/tetbee__base.dart';

List<String> getDataFilter(Map<String, dynamic> data, DataModel dataModel) {
  switch (dataModel) {
    case DataModel.appInfo:
      return [];
    case DataModel.userModel:
      UserModel userModel = UserModel.fromJson(data);
      List<String> placeIds = [];
      List<String> positionIds = [];
      for (var relation in userModel.userWorkPlaceRelation) {
        if (relation.isActive) {
          placeIds.add(relation.workPlaceId);
          positionIds.addAll(relation.positions);
        }
      }
      return [...placeIds, ...positionIds];
    case DataModel.workPlace:
      return [];
    case DataModel.chatRoom:
      ChatRoom chatRoom = ChatRoom.fromJson(data);
      return [...chatRoom.userStatus.keys];
    case DataModel.availabilityReceiver:
      return [];
    case DataModel.joinRequest:
      return [];
  }
}

T parseData<T>(DocumentSnapshot<Object?> doc) {
  Map<String, dynamic> data = {...doc.data() as Map<String, dynamic>};
  switch (T) {
    case const (AppInfo):
      return AppInfo.fromJson(data).copyWith() as T;
    case const (UserModel):
      return UserModel.fromJson(data).copyWith(id: doc.id) as T;
    case const (WorkPlace):
      return WorkPlace.fromJson(data).copyWith(id: doc.id) as T;
    case const (ChatRoom):
      return ChatRoom.fromJson(data).copyWith(id: doc.id) as T;
    case const (AvailabilityReceiver):
      return AvailabilityReceiver.fromJson(data).copyWith(id: doc.id) as T;
    case const (JoinRequest):
      return JoinRequest.fromJson(data).copyWith(id: doc.id) as T;
    case const (Map<String, dynamic>):
      return {'id': doc.id, ...data} as T;
    default:
      throw Exception('Unknown type');
  }
}
