import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/navigator/nested_navigator.dart';

class MainPage extends StatelessWidget {
  const MainPage();

  @override
  Widget build(final BuildContext context) {
    return MultiBlocProvider(providers: [
      // BlocProvider(
      //   lazy: false,
      //   create: (final _) => ConcertBloc(),
      // ),
      // BlocProvider(
      //   lazy: false,
      //   create: (final _) => ListingBloc(),
      // ),
      // BlocProvider(
      //   lazy: false,
      //   create: (final _) => HomeBloc(),
      // )
    ], child: NestedNavigator(firstPageBuilder: (final _) => Container()));
  }
}
