import 'package:tetbee__base/data_services/work_place/data/work_place_api.dart';
import 'package:tetbee__base/database_service/database_exports.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/work_place/update_work_place_user_info.dart';

class WorkPlaceDataSource with ApiErrorHandlerMixin {
  Future<String> createWorkPlace(WorkPlace workPlace, String userId) async {
    return execute(() => workPlaceApi.createWorkPlace(workPlace, userId));
  }

  Future<WorkPlace?> getWorkPlace(String id) async {
    return execute(() => workPlaceApi.getWorkPlace(id));
  }

  Future<bool> updateWorkPlaceUserInfo(
    UpdateWorkPlaceUserInfo updateWorkPlaceUserInfo,
  ) async {
    return execute(
      () => workPlaceApi.updateWorkPlaceUserInfo(updateWorkPlaceUserInfo),
    );
  }
}
