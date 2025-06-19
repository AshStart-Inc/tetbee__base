import 'package:tetbee__base/data_services/work_place/data/work_place_api.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/work_place/join_request.dart';

final JoinRequestDataSource joinRequestDataSource = JoinRequestDataSource();

class JoinRequestDataSource with ApiErrorHandlerMixin {
  Future<String> createJoinRequest(
    JoinRequest joinRequest,
    String userId,
  ) async {
    return execute(() => workPlaceApi.createJoinRequest(joinRequest, userId));
  }

  Future<bool> updateJoinRequest(JoinRequest joinRequest, String userId) async {
    return execute(() => workPlaceApi.updateJoinRequest(joinRequest, userId));
  }

  Future<bool> acceptJoinRequest(JoinRequest joinRequest) async {
    return execute(() => workPlaceApi.acceptJoinRequest(joinRequest));
  }

  Future<bool> rejectJoinRequest(JoinRequest joinRequest) async {
    return execute(() => workPlaceApi.rejectJoinRequest(joinRequest));
  }
}
