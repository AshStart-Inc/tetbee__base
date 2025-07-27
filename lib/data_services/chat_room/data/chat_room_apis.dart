import 'dart:io';

import 'package:tetbee__base/database_service/api_response.dart';
import 'package:tetbee__base/database_service/data_model.dart';
import 'package:tetbee__base/database_service/database_service.dart';
import 'package:tetbee__base/database_service/get_data_types.dart';
import 'package:tetbee__base/models/chat/chat_model_exports.dart';
import 'package:tetbee__base/models/chat/message_model.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

class ChatRoomApi {
  static Future<ApiResponse<String>> createChatRoom(
    String userId,
    ChatRoom chatRoom,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.chatRoom),
      dataModel: DataModel.chatRoom,
      userId: userId,
      data: chatRoom.toJson(),
      docId: chatRoom.id,
    );
  }

  static Future<ApiResponse<ChatRoom?>> getChatRoom(String id) async {
    return await DatabaseService.read<ChatRoom>(
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

  static Future<ApiResponse<String>> sendMessage(
    String chatRoomId,
    MessageModel messageModel,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.message, docId: chatRoomId),
      dataModel: DataModel.availabilityReceiver,
      userId: messageModel.senderUserId,
      data: messageModel.toJson(),
    );
  }

  static Future<ApiResponse<bool>> updateUserMessageRead(
    String userId,
    String chatRoomId,
  ) async {
    return await DatabaseService.update(
      types: getDataTypes(DataModel.userMessageReads, docId: userId),
      dataModel: DataModel.userMessageReads,
      baseData:
          UserMessageRead(
            chatType: ChatType.place,
            lastReads: DateTime.now(),
            unreadCount: 0,
          ).toJson(),
      updatedData: {
        'lastReads': Helpers.dateToJson(DateTime.now()),
        'unreadCount': 0,
      },
      userId: userId,
      docId: chatRoomId,
    );
  }

  static Future<ApiResponse<bool>> updateChatRoom(
    ChatRoom chatRoom,
    String userId,
    Map<String, dynamic> updatedData,
  ) async {
    return await DatabaseService.update(
      types: getDataTypes(DataModel.chatRoom),
      dataModel: DataModel.chatRoom,
      baseData: chatRoom.toJson(),
      updatedData: updatedData,
      userId: userId,
      docId: chatRoom.id!,
    );
  }
}
