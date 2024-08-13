import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:todolist/models/data/user_data.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../models/serializers.dart';
import '../widgets/cubit.dart';

part 'profile_bloc.bloc.g.dart';

final _logger = Logger('profile_bloc.dart');

@BlocGen(
  hydrateState: true,
)
class ProfileBloc extends WCCubit<UserData?>
    with HydratedMixin, _ProfileBlocHydratedMixin {
  ProfileBloc() : super(null) {
    hydrate();
  }

  void updateProfile(final UserData? profile) {
    emit(profile);
  }

  factory ProfileBloc.of(final BuildContext context) =>
      BlocProvider.of<ProfileBloc>(context);
}
