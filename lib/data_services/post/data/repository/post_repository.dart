import 'package:tetbee__base/data_services/post/data/data_soruce/post_data_source.dart';
import 'package:tetbee__base/models/post/post_model.dart';

class PostRepository {
  Future<String> createPost(PostModel postModel, String userId) async {
    return await PostDataSoruce().createPost(postModel, userId);
  }

  Future<bool> updatePost(
    PostModel postModel,
    String userId,
    Map<String, dynamic> updatedData,
  ) async {
    return await PostDataSoruce().updatePost(postModel, userId, updatedData);
  }
}
