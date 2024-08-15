import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todolist/bloc/singleton_bloc.dart';
import 'package:todolist/bloc/startup_bloc.dart';
import 'package:todolist/core/theme.dart';
import 'package:todolist/router/app_router_delegate.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import 'core/config.dart';
import 'pages/auth/login/bloc/login_bloc.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LoggingUtils.initialize();
  await dotenv.load(
    fileName: 'config/${config.environment}.config',
  );
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouterDelegate = AppRouterDelegate();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (final _) => StartupBloc(),
          ),
          BlocProvider(
            lazy: false,
            create: (final _) => singletonBloc.profileBloc,
          ),
          BlocProvider(
            lazy: false,
            create: (final _) =>
                LoginBloc(profileBloc: singletonBloc.profileBloc),
          ),
        ],
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: FlutterSizer(builder: (context, orientation, screenType) {
            return GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: MaterialApp(
                  title: 'Flutter Demo',
                  theme: getTheme(),
                  builder: BotToastInit(),
                  navigatorKey: navigatorKey, // Assign the global navigator key
                  home: Router(
                    routerDelegate: _appRouterDelegate,
                    backButtonDispatcher: RootBackButtonDispatcher(),
                  ),
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                ));
          }),
        ));
  }
}
