import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_shop/pages/signin_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/widgets/onboarding_widget.dart';
import 'package:tech_shop/widgets/primary_button.dart';
import 'package:tech_shop/widgets/text_widgets/title_text_widget.dart';

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
                    right: -153.w,
                    top: 16.h,
                    child: Container(
                      width: 305.w,
                      height: 305.h,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: -103.w,
                    child: Container(
                      width: 205.w,
                      height: 205.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFF8F92A1).withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  PageView(
                    onPageChanged: changeState,
                    children: const [
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
                          width: index == 0 ? 16.w : 8.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? const Color(0xFFFFDB47)
                                : const Color(0xFF8F92A1).withOpacity(0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.r),
                            ),
                          ),
                        ),
                        5.width(),
                        Container(
                          width: index == 1 ? 16.w : 8.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                            color: index == 1
                                ? const Color(0xFFFFDB47)
                                : const Color(0xFF8F92A1).withOpacity(0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.r),
                            ),
                          ),
                        ),
                        5.width(),
                        Container(
                          width: index == 2 ? 16.w : 8.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                            color: index == 2
                                ? const Color(0xFFFFDB47)
                                : const Color(0xFF8F92A1).withOpacity(0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.r),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                children: [
                  const TitleTextWidget(text: 'Welcome to CaStore !'),
                  16.height(),
                  Text(
                    "With long experience in the audio industry, we create the best quality products",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkTextColor.withOpacity(0.6),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40.w,
                vertical: 36.h,
              ),
              child: PrimaryButton(
                text: "get started",
                icon: "arrow_long_right.svg",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const SignInPage(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
