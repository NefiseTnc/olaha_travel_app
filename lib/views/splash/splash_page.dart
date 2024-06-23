// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:olaha_travel_app/utils/app_color.dart';
import 'package:olaha_travel_app/views/onboarding/onboarding_page.dart';
import 'package:olaha_travel_app/views/welcome/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late bool showOnboardingPage;

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Timer(const Duration(seconds: 2), () {
      init();
    });
  }

  Future<void> init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    showOnboardingPage =
        sharedPreferences.getBool("showOnboardingPage") ?? false;
    await sharedPreferences.setBool("showOnboardingPage", true);

    showOnboardingPage
        ? Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomePage()))
        : Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnboardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
          child: Image.asset(
        "assets/images/logo.png",
        width: 137,
        height: 175,
      )),
    );
  }
}
