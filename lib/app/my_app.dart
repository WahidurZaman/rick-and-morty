import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/features/cast/presentation/pages/cast.dart';
import 'package:rick_and_morty/features/episodes/data/repositories/episode_repositories.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episode_bloc.dart';
import 'package:rick_and_morty/features/home/presentation/pages/homePage.dart';
import 'package:rick_and_morty/features/locations/data/repositories/location_repositories.dart';
import 'package:rick_and_morty/features/locations/presentations/bloc/location_bloc.dart';

import '../features/cast/data/repositoriy/cast_repositories.dart';
import '../features/cast/presentation/bloc/cast_bloc.dart';
import '../features/core/presentation/widgets/scaffold_with_appbar.dart';
import '../features/core/services/login_provider.dart';
import '../features/core/services/navbar_provider.dart';
import '../features/episodes/presentation/pages/episodes.dart';
import '../features/locations/presentations/pages/locations.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class MyApp extends StatefulWidget {
  MyApp({super.key}) {
    // TODO: implement MyApp
    FlutterNativeSplash.remove();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final LoginInfo _loginInfo = LoginInfo();
  late final GoRouter router;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    router = GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: '/homepage',
      routes: <RouteBase>[
        //Write here GoRoutes Without Navbar
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (BuildContext context, GoRouterState state, Widget child) {
            return ScaffoldWithNavBar(child: child);
          },
          routes: <RouteBase>[
            //Write here GoRoutes With Navbar
            GoRoute(
              path: "/homepage",
              name: "homepage",
              builder: (BuildContext context, GoRouterState state) {
                return HomePage(
                  key: state.pageKey,
                );
              },
              routes: const <RouteBase>[],
            ),
            GoRoute(
              path: "/castPage",
              name: "castPage",
              builder: (BuildContext context, GoRouterState state) {
                return CastPage(
                  key: state.pageKey,
                );
              },
              routes: const <RouteBase>[],
            ),
            GoRoute(
              path: "/episodesPage",
              name: "episodesPage",
              builder: (BuildContext context, GoRouterState state) {
                return EpisodesPage(
                  key: state.pageKey,
                );
              },
              routes: const <RouteBase>[],
            ),
            GoRoute(
              path: "/locationsPage",
              name: "locationsPage",
              builder: (BuildContext context, GoRouterState state) {
                return LocationsPage(
                  key: state.pageKey,
                );
              },
              routes: const <RouteBase>[],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _loginInfo,
      child: MultiBlocProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => NavBarProvider(),
          ),
          BlocProvider(
            create: (context) =>
                EpisodeBloc(episodeRepository: EpisodeRepository()),
          ),
          BlocProvider(
            create: (context) =>
                LocationBloc(locationRepository: LocationRepository()),
          ),
          BlocProvider(
            create: (context) => CastBloc(castRepository: CastRepository()),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          localeResolutionCallback: (
            locale,
            supportedLocales,
          ) {
            return locale;
          },
          title: 'Rick and Morty',
          builder: (ctx, child) {
            ScreenUtil.init(ctx, designSize: const Size(375, 812));

            return Theme(
              data: ThemeData(
                colorScheme: const ColorScheme.highContrastLight(
                  primary: Colors.white,
                  onSecondary: Color(0xff9DFE00),
                  secondary: Colors.black,
                  onPrimary: Colors.white,
                ),
                useMaterial3: false,
                primaryColor: Colors.white,
              ),
              child: child ?? const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
