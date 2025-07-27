import 'package:tetbee__base/data_services/chat_room/data/data_soruce/chat_room_data_source.dart';
import 'package:tetbee__base/models/chat/message_model.dart';
import 'package:tetbee__base/tetbee__base.dart';

class ChatRoomRepository {
  Future<String> createChatRoom(String userId, ChatRoom chatRoom) async {
    return await ChatRoomDataSource().createChatRoom(userId, chatRoom);
  }

  Future<ChatRoom?> getChatRoom(String id) async {
    return await ChatRoomDataSource().getChatRoom(id);
  }

  Future<bool> setUserInChatRoom(String userId, String chatRoomId) async {
    return await ChatRoomDataSource().setUserInChatRoom(userId, chatRoomId);
  }

  Future<String> sendMessage(
    String chatRoomId,
    MessageModel messageModel,
  ) async {
    return await ChatRoomDataSource().sendMessage(chatRoomId, messageModel);
  }

  Future<bool> updateUserMessageRead(String userId, String chatRoomId) async {
    return await ChatRoomDataSource().updateUserMessageRead(userId, chatRoomId);
  }

  Future<bool> updateChatRoom(
    ChatRoom chatRoom,
    String userId,
    Map<String, dynamic> updatedData,
  ) async {
    return await ChatRoomDataSource().updateChatRoom(
      chatRoom,
      userId,
      updatedData,
    );
  }
}
