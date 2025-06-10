import 'dart:io';

import 'package:tetbee__base/database_service/api_response.dart';
import 'package:tetbee__base/database_service/data_model.dart';
import 'package:tetbee__base/database_service/database_service.dart';
import 'package:tetbee__base/database_service/get_data_types.dart';
import 'package:tetbee__base/models/chat/chat_model_exports.dart';
import 'package:tetbee__base/models/chat/chat_room.dart';

class ChatRoomApi {
  static Future<ApiResponse<String>> createChatRoom(
    String userId,
    ChatRoom chatRoom,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.chatRoom),
      dataModel: DataModel.availabilityReceiver,
      userId: userId,
      data: chatRoom.toJson(),
      docId: chatRoom.id,
    );
  }

  static Future<ApiResponse<ChatRoom?>> getChatRoom(String id) async {
    return await DatabaseService.read(
      types: getDataTypes(DataModel.chatRoom),
      docId: id,
    );
  }

  static Future<ApiResponse<bool>> setUserInChatRoom(
    String userId,
    String chatRoomId,
  ) async {
    ApiResponse<ChatRoom?> response = await DatabaseService.read<ChatRoom>(
      types: getDataTypes(DataModel.chatRoom),
      docId: chatRoomId,
    );
    if (response.data == null) {
      return ApiResponse(
        data: false,
        message: 'Chat room is not exist',
        statusCode: HttpStatus.badRequest,
      );
    }
    ChatRoom chatRoom = response.data!;
    if (!chatRoom.userStatus.containsKey(userId)) {
      chatRoom = chatRoom.copyWith(
        userStatus: {...chatRoom.userStatus, userId: ChatRoomUserStatus()},
      );
    }

    return await DatabaseService.update(
      types: getDataTypes(DataModel.chatRoom),
      dataModel: DataModel.chatRoom,
      baseData: chatRoom.toJson(),
      userId: userId,
      updatedData: {'userStatus': (chatRoom.toJson()['userStatus']) ?? {}},
      docId: chatRoomId,
    );
  }

  // static Future<ApiResponse<String>> sendMessage(
  //   String userId,
  //   String chatRoomId,
  // ) async {
  //   return await DatabaseService.write(
  //     types: getDataTypes(DataModel.chatRoom),
  //     dataModel: DataModel.availabilityReceiver,
  //     userId: userId,
  //     data: chatRoom.toJson(),
  //     docId: chatRoom.id,
  //   );
  // }
}
