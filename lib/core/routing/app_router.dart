import 'package:flutter/material.dart';
import 'package:instgram_clone/core/routing/routes.dart';
import 'package:instgram_clone/features/presentation/pages/credential/sign_up.dart';
import 'package:instgram_clone/features/presentation/pages/credential/sing_in.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const SignInPage(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined here for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
