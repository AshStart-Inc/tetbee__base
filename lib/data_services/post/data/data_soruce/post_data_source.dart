import 'package:tetbee__base/data_services/post/data/post_apis.dart';
import 'package:tetbee__base/database_service/error_handling/api_error_handler_mixin.dart';
import 'package:tetbee__base/models/post/post_model.dart';

class PostDataSoruce with ApiErrorHandlerMixin {
  Future<String> createPost(PostModel postModel, String userId) async {
    return execute(() => PostApi.createPost(postModel, userId));
  }

  Future<bool> updatePost(
    PostModel postModel,
    String userId,
    Map<String, dynamic> updatedData,
  ) async {
    return execute(() => PostApi.updatePost(postModel, userId, updatedData));
  }
}
