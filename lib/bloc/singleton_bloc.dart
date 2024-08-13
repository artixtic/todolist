import 'package:wc_dart_framework/wc_dart_framework.dart';

import 'profile_bloc.dart';

final _logger = Logger('singletonBloc.dart');

class _SingletonBloc {
  ProfileBloc? _profileBloc;

  ProfileBloc get profileBloc => _profileBloc ??= ProfileBloc();
}

final singletonBloc = _SingletonBloc();
