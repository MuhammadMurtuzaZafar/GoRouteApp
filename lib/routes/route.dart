import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routesapp/screens/ContactUS.dart';

import '../constant/constant.dart';
import '../screens/About.dart';
import '../screens/ErrorPage.dart';
import '../screens/Home.dart';
import '../screens/Profile.dart';

class NyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteConstants.homeRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: Home());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.profileRouteName,
          path: '/profile/:username/:userid',
          pageBuilder: (context, state) {
            return MaterialPage(
                child: Profile(
              userid: state.params['userid']!,
              username: state.params['username']!,
            ));
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.aboutRouteName,
          path: '/about',
          pageBuilder: (context, state) {
            return  MaterialPage(child: About());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.contactUsRouteName,
          path: '/contact_us',
          pageBuilder: (context, state) {
            return  MaterialPage(child: ContactUs());
          },
        )
      ],
      errorPageBuilder: (context, state) {
        return  MaterialPage(child: ErrorPage());
      },
    );
    return router;
  }
}
