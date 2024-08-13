import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/models/data/user_data.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../../../../bloc/profile_bloc.dart';
import '../../../../models/states/api_state.dart';
import '../../../../services/api_service.dart';
import '../../../../utils/cubit_utils.dart';
import '../../../../widgets/cubit.dart';
import 'login_state.dart';

part 'login_bloc.bloc.g.dart';

@BlocGen()
class LoginBloc extends BVCubit<LoginState, LoginStateBuilder>
    with _LoginBlocMixin {
  final ProfileBloc _profileBloc;

  LoginBloc({
    required final ProfileBloc profileBloc,
  })  : _profileBloc = profileBloc,
        super(LoginState());

  factory LoginBloc.of(final BuildContext context) =>
      BlocProvider.of<LoginBloc>(context);

  @override
  @protected
  void $onUpdateEmail() {
    emit(state.rebuild((final b) => b.loginApi.error = null));
  }

  @override
  @protected
  void $onUpdatePassword() {
    emit(state.rebuild((final b) => b.loginApi.error = null));
  }

  Future<void> callLogin() {
    return CubitUtils.makeApiCall<LoginState, LoginStateBuilder, void>(
      cubit: this,
      apiState: state.loginApi,
      updateApiState: (final b, final apiState) => b.loginApi.replace(apiState),
      callApi: () async {
        _profileBloc.updateProfile(UserData.fromDynamic(
            {"token": "dac0be9d02cc6fa028a90d4d16ff51714a93455d"}));
      },
    );
  }
}
