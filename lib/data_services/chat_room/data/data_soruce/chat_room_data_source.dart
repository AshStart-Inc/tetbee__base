import 'package:tetbee__base/data_services/chat_room/data/chat_room_apis.dart';
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
}
