// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:olaha_travel_app/common/widgets/app_button.dart';
import 'package:olaha_travel_app/common/widgets/app_textformfield.dart';
import 'package:olaha_travel_app/common/widgets/social_button_widget.dart';
import 'package:olaha_travel_app/utils/app_color.dart';
import 'package:olaha_travel_app/views/sign_up/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                    "Welcome Back",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "Please log in to your account",
                    style: TextStyle(
                      color: AppColor.textGrayColor,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppTextFormField(hintText: "Email"),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppTextFormField(hintText: "Password"),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: AppColor.textGrayColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AppButton(
                    bgColor: AppColor.primaryColor,
                    textColor: AppColor.blackColor,
                    text: "Sign In",
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account?",
                        style:
                            TextStyle(color: AppColor.blackColor, fontSize: 14),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
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
                      const Text("Or continue with"),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        bgColor: AppColor.blackColor,
                        icon: "assets/icons/apple.png",
                        singleIcon: true,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SocialButton(
                        bgColor: Color(0xFFCF4232),
                        icon: "assets/icons/google.png",
                        singleIcon: true,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SocialButton(
                        bgColor: Color(0xFF3C66C3),
                        singleIcon: true,
                        icon: "assets/icons/facebook.png",
                      ),
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
