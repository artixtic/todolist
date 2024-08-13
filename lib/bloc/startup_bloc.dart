import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/models/states/api_state.dart';
import 'package:todolist/utils/cubit_utils.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../widgets/cubit.dart';
import 'states/startup_state.dart';

part 'startup_bloc.bloc.g.dart';

final _logger = Logger('startup_bloc.dart');

@BlocGen()
class StartupBloc extends BVCubit<StartupState, StartupStateBuilder> {
  StartupBloc() : super(StartupState()) {
    callEverything();
  }

  factory StartupBloc.of(final BuildContext context) =>
      BlocProvider.of<StartupBloc>(context);

  @protected
  void updateIndex(int index) {
    emit(state.rebuild((final b) => b..index = index));
  }

  Future<void> callEverything() async {
    return CubitUtils.makeApiCall<StartupState, StartupStateBuilder, void>(
      cubit: this,
      apiState: state.everythingApi,
      updateApiState: (final b, final apiState) =>
          b.everythingApi.replace(apiState),
      callApi: () async {
        // final singers = await apiService.getSingers();
        // final songs = await apiService.getSongs();
        // final albums = await apiService.getAlbums();
        //
        // await insertSongArtistAlbumDataIntoLocalDatabase(
        //     albums, singers, songs);

        // emit(
        //   state.rebuild((final b) => b
        //     ..artistData.replace(singers)
        //     ..songData.replace(songs)
        //     ..albumData.replace(albums)),
        // );
      },
      onError: (final e) async {
        // await fromLocalDatabase();
        _logger.severe('callEverything: $e');
      },
    );
  }
}
