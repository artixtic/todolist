import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/pages/main/project/bloc/project_bloc.dart';

import '../../widgets/navigator/nested_navigator.dart';
import 'project/all_project_page.dart';

class MainPage extends StatelessWidget {
  const MainPage();

  @override
  Widget build(final BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        lazy: false,
        create: (final _) => ProjectBloc(),
      ),
      // BlocProvider(
      //   lazy: false,
      //   create: (final _) => ListingBloc(),
      // ),
      // BlocProvider(
      //   lazy: false,
      //   create: (final _) => HomeBloc(),
      // )
    ], child: NestedNavigator(firstPageBuilder: (final _) => AllProjects()));
  }
}
