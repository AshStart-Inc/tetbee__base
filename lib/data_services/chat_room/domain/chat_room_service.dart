import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/chat_room/data/repository/chat_room_repository.dart';
import 'package:tetbee__base/tetbee__base.dart';

final ChatRoomService chatRoomService = ChatRoomService();

class ChatRoomService with ApiServiceMixin {
  static String publicChatRoomId = 'tetbeePublic';
  Future<Either<Failure, String>> createChatRoom(
    String userId,
    ChatRoom chatRoom,
  ) async {
    return execute(
      () => ChatRoomRepository().createChatRoom(userId, chatRoom),
      'Error while createChatRoom',
    );
  }

  Future<Either<Failure, ChatRoom?>> getChatRoom(String id) async {
    return execute(
      () => ChatRoomRepository().getChatRoom(id),
      'Error while getChatRoom',
    );
  }

  Future<Either<Failure, bool>> setUserInChatRoom(
    String userId,
    String chatRoomId,
  ) async {
    return execute(
      () => ChatRoomRepository().setUserInChatRoom(userId, chatRoomId),
      'Error while setUserInChatRoom',
    );
  }
}
