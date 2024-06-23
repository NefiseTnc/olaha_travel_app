import 'package:flutter/material.dart';
import 'package:olaha_travel_app/common/widgets/app_button.dart';
import 'package:olaha_travel_app/utils/app_color.dart';
import 'package:olaha_travel_app/views/onboarding/models/onboarding_model.dart';
import 'package:olaha_travel_app/views/welcome/welcome_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _controller;

  int _currentIndex = 0;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onboardingContentList.length,
              onPageChanged: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              itemBuilder: (_, i) => Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: screenHeight * .58,
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/onboarding_background.png",
                          width: double.infinity,
                          height: screenHeight * .5,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: screenHeight * .18,
                          left: 32,
                          child: Image.asset(
                            onboardingContentList[i].image,
                            width: 310,
                            height: screenHeight * .4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * .35,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 45, vertical: 20),
                      decoration: BoxDecoration(
                          color: AppColor.grayColor,
                          borderRadius: BorderRadius.circular(24.0)),
                      child: Column(
                        children: [
                          Text(
                            onboardingContentList[i].title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 24),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            onboardingContentList[i].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: AppColor.textGrayColor, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              onboardingContentList.length,
                              (index) => Container(
                                margin: const EdgeInsets.only(right: 5),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _currentIndex == index
                                      ? AppColor.primaryColor
                                      : AppColor.grayColor2,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          AppButton(
                            onTap: () {
                              if (_currentIndex ==
                                  onboardingContentList.length - 1) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WelcomePage()));
                              }
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            bgColor: Colors.black,
                            textColor: Colors.white,
                            text: "Get Started",
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WelcomePage()));
                            },
                            child: const Text(
                              "Skip for now",
                              style: TextStyle(
                                color: AppColor.textGrayColor,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
