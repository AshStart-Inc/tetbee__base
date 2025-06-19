import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/work_place/data/repositories/join_request_repository.dart';
import 'package:tetbee__base/models/work_place/join_request.dart';
import 'package:tetbee__base/tetbee__base.dart';

JoinRequestService joinRequestService = JoinRequestService();

class JoinRequestService with ApiServiceMixin {
  Future<Either<Failure, String>> createJoinRequest(
    JoinRequest joinRequest,
    String userId,
  ) async {
    return execute(
      () => jojnRequestRepository.createJoinRequest(joinRequest, userId),
      'Error while create joinRequest',
    );
  }

  Future<Either<Failure, bool>> updateJoinRequest(
    JoinRequest joinRequest,
    String userId,
  ) async {
    return execute(
      () => jojnRequestRepository.updateJoinRequest(joinRequest, userId),
      'Error while create joinRequest',
    );
  }

  Future<Either<Failure, bool>> acceptJoinRequest(
    JoinRequest joinRequest,
    String userId,
  ) async {
    return execute(
      () => jojnRequestRepository.acceptJoinRequest(joinRequest),
      'Error while create joinRequest',
    );
  }

  Future<Either<Failure, bool>> rejectJoinRequest(
    JoinRequest joinRequest,
    String userId,
  ) async {
    return execute(
      () => jojnRequestRepository.rejectJoinRequest(joinRequest),
      'Error while rejectJoinRequest',
    );
  }
}
