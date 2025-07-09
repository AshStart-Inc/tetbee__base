import 'package:tetbee__base/database_service/api_response.dart';
import 'package:tetbee__base/database_service/data_model.dart';
import 'package:tetbee__base/database_service/database_service.dart';
import 'package:tetbee__base/database_service/get_data_types.dart';
import 'package:tetbee__base/models/chat/message_model.dart';
import 'package:tetbee__base/models/post/post_exports.dart';

class PostApi {
  static Future<ApiResponse<String>> createPost(
    PostModel postModel,
    String userId,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.postModel),
      dataModel: DataModel.postModel,
      userId: userId,
      data: postModel.toJson(),
    );
  }

  static Future<ApiResponse<bool>> updatePost(
    PostModel postModel,
    String userId,
    Map<String, dynamic> updatedData,
  ) async {
    return await DatabaseService.update(
      baseData: postModel.toJson(),
      types: getDataTypes(DataModel.postModel),
      dataModel: DataModel.postModel,
      updatedData: updatedData,
      userId: userId,
      docId: postModel.id!,
    );
  }

  static Future<ApiResponse<String>> createPostComment(
    MessageModel postComment,
    String postId,
    String userId,
  ) async {
    return await DatabaseService.write(
      types: getDataTypes(DataModel.postComment, docId: postId),
      dataModel: DataModel.postComment,
      userId: userId,
      data: postComment.toJson(),
    );
  }
}
