import 'package:tetbee__base/data_services/work_place/data/data_source/join_request_data_source.dart';
import 'package:tetbee__base/models/work_place/join_request.dart';

final JojnRequestRepository jojnRequestRepository = JojnRequestRepository();

class JojnRequestRepository {
  Future<String> createJoinRequest(
    JoinRequest joinRequest,
    String userId,
  ) async {
    return await joinRequestDataSource.createJoinRequest(joinRequest, userId);
  }

  Future<bool> updateJoinRequest(JoinRequest joinRequest, String userId) async {
    return await joinRequestDataSource.updateJoinRequest(joinRequest, userId);
  }

  Future<bool> acceptJoinRequest(JoinRequest joinRequest) async {
    return await joinRequestDataSource.acceptJoinRequest(joinRequest);
  }
}
