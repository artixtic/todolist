import 'package:appflowy_board/appflowy_board.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/models/data/api_meta_data.dart';
import 'package:todolist/models/data/project_data.dart';
import 'package:todolist/models/data/project_data_by_id.dart';
import 'package:todolist/models/states/api_state.dart';
import 'package:todolist/pages/main/project/bloc/project_state.dart';
import 'package:todolist/services/api_service.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../../../../utils/cubit_utils.dart';
import '../../../../widgets/cubit.dart';
import '../../../../widgets/navigator/bloc/pilot_bloc.dart';

part 'project_bloc.bloc.g.dart';

final _logger = Logger("concert_bloc.dart");

@BlocGen()
class ProjectBloc extends BVCubit<ProjectState, ProjectStateBuilder> {
  ProjectBloc() : super(ProjectState()) {
    callEverything();
  }

  factory ProjectBloc.of(final BuildContext context) =>
      BlocProvider.of<ProjectBloc>(context);

  callEverything() {
    return CubitUtils.makeApiCall<ProjectState, ProjectStateBuilder, void>(
      cubit: this,
      apiState: state.allProjectApi,
      updateApiState: (final b, final apiState) =>
          b.allProjectApi.replace(apiState),
      callApi: () async {
        final projects = await apiService.getAllProject();
        emit(state.rebuild((a) => a.allProjects.replace(projects)));
        // for (var a in concertData) {
        //   await callConcertDetailApi(a.id);
        // }
        // // final songs = await apiService.searchSongs(search);
        // // if (state.search!.isNotEmpty) {
        // await insertConcertIntoLocalDatabase(concertData);
        //
        // emit(state.rebuild((final b) => b..concertData.replace(concertData)));
        // } else {
        //   emit(state.rebuild((final b) => b..searchResult = null));
        // }
      },
      onError: (final e) async {
        // await getConcertDataFromLocalDatabase();
        if (e is DioError) {
          final meta = e.error;
          if (meta is ApiMetaData) {
            // if (meta.code == 201) {
            //   emit(state.rebuild((final b) => b.emailError.replace(meta)));
            // }
          }
        }
      },
    );
  }

  getAllDataOfProject(String id) {
    return CubitUtils.makeApiCall<ProjectState, ProjectStateBuilder, void>(
      cubit: this,
      apiState: state.projectDataApi,
      updateApiState: (final b, final apiState) =>
          b.projectDataApi.replace(apiState),
      callApi: () async {
        final BuiltList<ProjectDataById> projects =
            await apiService.getAllProjectData(id);

        if (projects.isNotEmpty) {
          List<ProjectDataById> updatedProjects = [];

          for (var e in projects) {
            // Fetch section data asynchronously
            List a = await apiService.getAllProjectBySection(e.id!);

            // Rebuild the ProjectDataById object with updated sectionData
            var updatedProject = e.rebuild((b) => b..sectionData.replace(a));

            updatedProjects.add(updatedProject);
          }

          // If needed, convert the list back to a BuiltList
          final BuiltList<ProjectDataById> finalProjects =
              BuiltList<ProjectDataById>.from(updatedProjects);
          emit(state.rebuild((a) => a.projectDataById.replace(finalProjects)));
        }
        // for (var a in concertData) {
        //   await callConcertDetailApi(a.id);
        // }
        // // final songs = await apiService.searchSongs(search);
        // // if (state.search!.isNotEmpty) {
        // await insertConcertIntoLocalDatabase(concertData);
        //
        // emit(state.rebuild((final b) => b..concertData.replace(concertData)));
        // } else {
        //   emit(state.rebuild((final b) => b..searchResult = null));
        // }
      },
      onError: (final e) async {
        // await getConcertDataFromLocalDatabase();
        if (e is DioError) {
          final meta = e.error;
          if (meta is ApiMetaData) {
            // if (meta.code == 201) {
            //   emit(state.rebuild((final b) => b.emailError.replace(meta)));
            // }
          }
        }
      },
    );
  }
}
