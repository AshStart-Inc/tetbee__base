import 'package:tetbee__base/data_services/work_place/data/data_source/work_place_data_source.dart';
import 'package:tetbee__base/models/models.dart';
import 'package:tetbee__base/models/work_place/update_work_place_user_info.dart';

class WorkPlaceRepository {
  Future<String> createWorkPlace(WorkPlace workPlace, String userId) async {
    return await WorkPlaceDataSource().createWorkPlace(workPlace, userId);
  }

  Future<WorkPlace?> getWorkPlace(String id) async {
    return await WorkPlaceDataSource().getWorkPlace(id);
  }

  Future<bool> updateWorkPlaceUserInfo(
    UpdateWorkPlaceUserInfo updateWorkPlaceUserInfo,
  ) async {
    return await WorkPlaceDataSource().updateWorkPlaceUserInfo(
      updateWorkPlaceUserInfo,
    );
  }
}
