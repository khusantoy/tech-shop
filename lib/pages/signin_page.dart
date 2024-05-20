import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/pages/home_page.dart';
import 'package:tech_shop/pages/signup_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/widgets/container_widget.dart';
import 'package:tech_shop/widgets/curret_location_widget.dart';
import 'package:tech_shop/widgets/divider_widget.dart';
import 'package:tech_shop/widgets/facebook_btn_widget.dart';
import 'package:tech_shop/widgets/primary_button.dart';
import 'package:tech_shop/widgets/text_widgets/form_title_widget.dart';
import 'package:tech_shop/widgets/text_widgets/subtitle_text_widget.dart';
import 'package:tech_shop/widgets/text_widgets/title_text_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CurretLocationWidget(
                      text: 'Hanoi, Vietnam',
                    ),
                    64.height(),
                    const TitleTextWidget(
                      text: "Let's Sign You In",
                    ),
                    8.height(),
                    const SubtitleTextWidget(
                      text: "Welcome back, you've been missed!",
                    ),
                    40.height(),
                    Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FormTitleWidget(text: 'Username or Email'),
                          8.height(),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your username";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      AppColors.greyTextColor.withOpacity(0.2),
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  "assets/images/icons/person.svg",
                                ),
                              ),
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.darkTextColor,
                                height: 1.25.h,
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                          40.height(),
                          const FormTitleWidget(text: 'Password'),
                          8.height(),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your password";
                              }
                              return null;
                            },
                            obscureText: hidePassword,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      AppColors.greyTextColor.withOpacity(0.2),
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.darkTextColor,
                                ),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset(
                                  "assets/images/icons/lock.svg",
                                ),
                              ),
                              hintText: '• • • • • • • •',
                              hintStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.darkTextColor,
                                height: 1.25.h,
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 12),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hidePassword = !hidePassword;
                                  });
                                },
                                icon: hidePassword
                                    ? SvgPicture.asset(
                                        "assets/images/icons/eye.svg",
                                      )
                                    : const Icon(
                                        Icons.visibility_off_outlined,
                                      ),
                              ),
                            ),
                          ),
                          // 190.height(),
                          // Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ContainerWidget(
                widget: PrimaryButton(
                  text: 'sign in',
                  icon: 'login.svg',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const HomePage(),
                        ),
                      );
                    }
                  },
                ),
              ),
              16.height(),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 13.sp),
                    children: [
                      const TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: const TextStyle(
                          color: AppColors.darkTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => const SignUpPage(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
              24.height(),
              const DividerWidget(),
              24.height(),
              const ContainerWidget(
                widget: FacebookBtnWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
