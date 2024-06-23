// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:olaha_travel_app/common/widgets/app_button.dart';

import 'package:olaha_travel_app/utils/app_color.dart';
import 'package:olaha_travel_app/views/sign_in/sign_in_page.dart';
import 'package:olaha_travel_app/common/widgets/social_button_widget.dart';
import 'package:olaha_travel_app/views/sign_up/sign_up_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child: Image.asset(
                "assets/images/logo_2.png",
                width: 178,
                height: 60,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
            child: Container(
              padding: const EdgeInsets.all(25.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.0)),
              child: Column(
                children: [
                  const Text(
                    "Welcome to Oloha",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "Live life with no excuses, travel with no regret",
                    style: TextStyle(
                      color: AppColor.textGrayColor,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SocialButton(
                    bgColor: Colors.black,
                    icon: "assets/icons/apple.png",
                    text: "Sign in with Apple",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SocialButton(
                    bgColor: Color(0xFFCF4232),
                    icon: "assets/icons/google.png",
                    text: "Continue with Google",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SocialButton(
                    bgColor: Color(0xFF3C66C3),
                    icon: "assets/icons/facebook.png",
                    text: "Continue with Facebook",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: AppColor.grayColor,
                        ))),
                      ),
                      const Text("Or"),
                      Container(
                        width: 50,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: AppColor.grayColor,
                        ))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInPage()));
                        },
                        bgColor: AppColor.primaryColor,
                        textColor: AppColor.blackColor,
                        text: "Sign In",
                        width: 145,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      AppButton(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          bgColor: AppColor.blackColor,
                          textColor: Colors.white,
                          width: 145,
                          text: "Sign Up"),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
