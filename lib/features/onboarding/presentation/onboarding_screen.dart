import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mehdi0605/helpers/all_routes.dart';
import 'package:mehdi0605/helpers/navigation_service.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            NavigationService.navigateTo(Routes.login);
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
