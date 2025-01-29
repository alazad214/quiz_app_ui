import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:mehdi0605/features/human_embryology/presentation/human_embryology_flashcard_screen.dart';
import 'package:mehdi0605/features/human_embryology/presentation/result_screen.dart';
import 'package:mehdi0605/features/oral_exam/presentation/oral_exam_question_screen.dart';
import 'package:mehdi0605/features/oral_exam/presentation/oral_exam_suggested_answer.dart';
import 'package:mehdi0605/features/oral_exam/presentation/oral_result_screen.dart';
import '../features/authentication/presentation/login_screen.dart';
import '../features/authentication/presentation/new_password.dart';
import '../features/authentication/presentation/otp_verification_screen.dart';
import '../features/authentication/presentation/signup_screen.dart';
import '../features/home/presentation/homescreen.dart';
import '../features/profile/presentation/settings_screen.dart';
import '../features/human_embryology/presentation/tap_card_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String login = '/login_screen';
  static const String signup = '/signup_screen';
  static const String forgetPassword = '/forget_password_screen';
  static const String otpVerification = '/otp_verification_screen';
  static const String homePage = '/home_page_screen';
  static const String newPasswprd = '/new_passwprd';
  static const String oralExamQuestionScreen = '/oral_exam_question_screen';
  static const String oralExamSuggestedAnswerScreen =
      '/oral_exam_suggested_answer_screen';
  static const String oralResultScreen = '/oral_result_screen';
  static const String settinstScreen = '/settinst_Screen';
  static const String tapCardScreen = '/tapCard_screen';
  static const String humanEmbryologyFlashcardScreen = '/humanEmbryology_Flashcard_Screen';
  static const String resultScreen = '/result_screen';

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
      case Routes.newPasswprd:
        if (Platform.isAndroid) {   
          return _FadedTransitionRoute(
              widget: NewPassword(), settings: settings);
        } else {
          return CupertinoPageRoute(builder: (context) => NewPassword());
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
              widget: const Homescreen(), settings: settings);
        } else {
          return CupertinoPageRoute(builder: (context) => const Homescreen());
        }
      //
      case Routes.oralExamQuestionScreen:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget: const OralExamQuestionScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => const OralExamQuestionScreen());
        }
      case Routes.oralExamSuggestedAnswerScreen:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget: const OralExamSuggestedAnswer(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => const OralExamSuggestedAnswer());
        }

      case Routes.oralResultScreen:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget: const OralResultScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => const OralResultScreen());
        }
      case Routes.settinstScreen:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget: const SettingsScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => const SettingsScreen());
        }

      case Routes.tapCardScreen:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget:  TapCardScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) =>  TapCardScreen());
        }
      case Routes.humanEmbryologyFlashcardScreen:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget:  HumanEmbryologyFlashcardScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) =>  HumanEmbryologyFlashcardScreen());
        }

      case Routes.resultScreen:
        if (Platform.isAndroid) {
          return _FadedTransitionRoute(
              widget:  ResultScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) =>  ResultScreen());
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
