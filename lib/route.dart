import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottokinggpt/1_screens/begin_app.dart';
import 'package:lottokinggpt/1_screens/home_screen.dart';
import 'package:lottokinggpt/2_providers/auth_notifier_provider.dart';
import 'package:lottokinggpt/utils/utility.dart';
import 'package:lottokinggpt/widgets/screens/page_error_screen.dart';

class Routes {
  static const String login = '/login';
  static const String home = '/home';

  static profileNamedPage([String? name]) => '/${name ?? ':profile'}';
}

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey(debugLabel: 'root');

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final authNotifier = ref.read(authChangeNotifierProvider);

    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: Routes.home,
      refreshListenable: authNotifier,
      debugLogDiagnostics: true,
      // redirect to the login page if the user is not logged in
      redirect: (BuildContext context, GoRouterState state) {
        globalContext = context;

        // if the user is not logged in, they need to login
        final bool loggedIn = authNotifier.isAuthenticated;
        final bool loggingIn = state.matchedLocation == Routes.home;
        if (!loggedIn) {
          return Routes.home;
        }

        // if the user is logged in but still on the login page, send them to
        // the home page
        if (loggingIn) {
          return Routes.home;
        }

        // no need to redirect at all
        return null;
      },
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            print(state.location);
            return BeginApp(child: child);
          },
          routes: [
            // GoRoute(
            //   path: Routes.login,
            //   builder: (BuildContext context, GoRouterState state) {
            //     return const LoginScreen();
            //   },
            // ),
            GoRoute(
              path: Routes.home,
              builder: (BuildContext context, GoRouterState state) {
                return const HomeScreen();
              },
            ),
          ],
        ),
      ],
      errorBuilder: (context, state) => RouteErrorScreen(
        errorMsg: state.error.toString(),
      ),
    );
  },
);
