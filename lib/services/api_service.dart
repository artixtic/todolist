import 'package:built_collection/src/list.dart';
import 'package:todolist/models/data/project_data.dart';
import 'package:todolist/models/data/project_data_by_id.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../models/data/user_data.dart';
import '../utils/dio.dart';

final _logger = Logger('api_service.dart');

class _ApiService {
  Future<UserData> login({
    required final String email,
    required final String password,
  }) async {
    final response = await dio.post(
      'login',
      data: {
        'email': email,
        'password': password,
      },
    );
    return UserData.fromDynamic(response.data["data"]);
  }

  Future<BuiltList<ProjectData>> getAllProject() async {
    final response = await dio.get(
      'projects',
      // data: {
      //   'email': email,
      //   'password': password,
      // },
    );
    return ProjectData.fromDynamics(response.data);
  }

  Future<BuiltList<ProjectDataById>> getAllProjectData(String id) async {
    final response = await dio.get("sections?project_id=$id");

    return ProjectDataById.fromDynamics(response.data);
  }

  getAllProjectBySection(String id) async {
    final response = await dio.get("tasks?section_id=$id");
    return response.data;
  }
}

final apiService = _ApiService();
