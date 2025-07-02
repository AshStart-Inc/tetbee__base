import 'package:dartz/dartz.dart';
import 'package:tetbee__base/data_services/post/data/repository/post_repository.dart';
import 'package:tetbee__base/database_service/error_handling/api_service_mixin.dart';
import 'package:tetbee__base/database_service/error_handling/failures.dart';
import 'package:tetbee__base/models/post/post_model.dart';

final PostService postService = PostService();

class PostService with ApiServiceMixin {
  Future<Either<Failure, String>> createPost(
    PostModel postModel,
    String userId,
  ) async {
    return execute(
      () => PostRepository().createPost(postModel, userId),
      'Error while createPost',
    );
  }

  Future<Either<Failure, bool>> updatePost(
    PostModel postModel,
    String userId,
    Map<String, dynamic> updatedData,
  ) async {
    return execute(
      () => PostRepository().updatePost(postModel, userId, updatedData),
      'Error while updatePost',
    );
  }
}
