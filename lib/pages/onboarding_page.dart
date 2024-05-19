import 'package:flutter/material.dart';
import 'package:tech_shop/pages/sign_in_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/widgets/onboarding_widget.dart';
import 'package:tech_shop/widgets/primary_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int index = 0;

  void increment() {
    setState(() {
      index++;
    });
  }

  void dicrement() {
    setState(() {
      index--;
    });
  }

  Function? method;

  void changeState(int i) {
    if (index == 0) {
      method = increment;
    } else if (index == 2) {
      method = dicrement;
    }
    method!();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      MediaQuery.of(context).viewPadding.top) *
                  0.63,
              child: Stack(
                children: [
                  Positioned(
                    right: -152,
                    top: 30,
                    child: Container(
                      width: 305,
                      height: 305,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: -102,
                    child: Container(
                      width: 205,
                      height: 205,
                      decoration: BoxDecoration(
                        color: const Color(0xFF8F92A1).withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  PageView(
                    onPageChanged: changeState,
                    children: [
                      OnboardingWidget(
                        imagePath: "assets/images/png/onboarding_image_two.png",
                      ),
                      OnboardingWidget(
                        imagePath: "assets/images/png/onboarding_image_two.png",
                      ),
                      OnboardingWidget(
                        imagePath: "assets/images/png/onboarding_image_two.png",
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: index == 0 ? 16 : 8,
                          height: 5,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? const Color(0xFFFFDB47)
                                : const Color(0xFF8F92A1).withOpacity(0.2),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        5.width(),
                        Container(
                          width: index == 1 ? 16 : 8,
                          height: 5,
                          decoration: BoxDecoration(
                            color: index == 1
                                ? const Color(0xFFFFDB47)
                                : const Color(0xFF8F92A1).withOpacity(0.2),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        5.width(),
                        Container(
                          width: index == 2 ? 16 : 8,
                          height: 5,
                          decoration: BoxDecoration(
                            color: index == 2
                                ? const Color(0xFFFFDB47)
                                : const Color(0xFF8F92A1).withOpacity(0.2),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            40.height(),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  const Text(
                    "Welcome to CaStore !",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.darkTextColor,
                    ),
                  ),
                  20.height(),
                  Text(
                    "With long experience in the audio industry, we create the best quality products",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkTextColor.withOpacity(0.6),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            20.height(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: PrimaryButton(
                text: "get started",
                icon: "arrow_long_right.svg",
                page: const SignInPage(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
