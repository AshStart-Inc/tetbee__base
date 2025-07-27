import 'package:tetbee__base/data_services/chat_room/data/chat_room_apis.dart';
import 'package:tetbee__base/models/chat/message_model.dart';
import 'package:tetbee__base/tetbee__base.dart';

class ChatRoomDataSource with ApiErrorHandlerMixin {
  Future<String> createChatRoom(String userId, ChatRoom chatRoom) async {
    return execute(() => ChatRoomApi.createChatRoom(userId, chatRoom));
  }

  Future<ChatRoom?> getChatRoom(String id) async {
    return execute(() => ChatRoomApi.getChatRoom(id));
  }

  Future<bool> setUserInChatRoom(String userId, String chatRoomId) async {
    return execute(() => ChatRoomApi.setUserInChatRoom(userId, chatRoomId));
  }

  Future<String> sendMessage(
    String chatRoomId,
    MessageModel messageModel,
  ) async {
    return execute(() => ChatRoomApi.sendMessage(chatRoomId, messageModel));
  }

  Future<bool> updateUserMessageRead(String userId, String chatRoomId) async {
    return execute(() => ChatRoomApi.updateUserMessageRead(userId, chatRoomId));
  }

  Future<bool> updateChatRoom(
    ChatRoom chatRoom,
    String userId,
    Map<String, dynamic> updatedData,
  ) async {
    return execute(
      () => ChatRoomApi.updateChatRoom(chatRoom, userId, updatedData),
    );
  }
}
