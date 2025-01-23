import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:mehdi0605/features/authentication/presentation/forget_password_screen.dart';

import '../features/authentication/presentation/login_screen.dart';
import '../features/authentication/presentation/otp_verification_screen.dart';
import '../features/authentication/presentation/signup_screen.dart';
import '../features/home/home_page_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String login = '/login_screen';
  static const String signup = '/signup_screen';
  static const String forgetPassword = '/forget_password_screen';
  static const String otpVerification = '/otp_verification_screen';
  static const String homePage = '/home_page_screen';
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget: const LoginScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(builder: (context) => const LoginScreen());
        }

      case Routes.signup:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget: const SignupScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(builder: (context) => const SignupScreen());
        }
      case Routes.forgetPassword:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget: const ForgetPassword(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => const ForgetPassword());
        }
      case Routes.otpVerification:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget: const OtpVerificationScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => const OtpVerificationScreen());
        }
      case Routes.homePage:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget: const HomePageScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => const HomePageScreen());
        }

      default:
        return null;
    }
  }
}

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
