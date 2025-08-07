import 'package:coach_buddy/feature/signin/view/signin_screen.dart';
import 'package:coach_buddy/feature/signup/view/signup_screen.dart';
import 'package:coach_buddy/feature/welcome/view/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRoute = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: SignUpScreen.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpScreen();
          },
        ),
        GoRoute(
            path: SignInScreen.routeName,
            builder: (BuildContext context, GoRouterState state) {
              return const SignInScreen();
            },
        ),
      ],
    ),
  ],
);