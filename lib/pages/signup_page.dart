import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/pages/signin_page.dart';
import 'package:tech_shop/pages/verification_page.dart';
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

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();

  bool hidePassword = true;

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String? usernameError;
  String? emailError;
  String? passwordError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CurretLocationWidget(text: 'Hanoi, Vietnam'),
                      64.height(),
                      const TitleTextWidget(text: 'Getting Started'),
                      8.height(),
                      const SubtitleTextWidget(
                          text: 'Create an account to continue!'),
                      40.height(),
                      Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FormTitleWidget(text: 'Email'),
                            8.height(),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {
                                emailError = null;
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.greyTextColor
                                        .withOpacity(0.2),
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.darkTextColor,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(14),
                                  child: SvgPicture.asset(
                                    "assets/images/icons/email.svg",
                                  ),
                                ),
                                hintText: 'hello.carrotlabs@gmail.com',
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.darkTextColor,
                                  height: 1.25,
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                errorText: emailError,
                              ),
                            ),
                            40.height(),
                            const FormTitleWidget(text: 'Username'),
                            8.height(),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: usernameController,
                              onChanged: (value) {
                                usernameError = null;
                                setState(() {});
                              },
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.greyTextColor
                                        .withOpacity(0.2),
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
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: SvgPicture.asset(
                                    "assets/images/icons/check.svg",
                                  ),
                                ),
                                hintText: 'carrotlabs',
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.darkTextColor,
                                  height: 1.25,
                                ),
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                errorText: usernameError,
                              ),
                            ),
                            40.height(),
                            const FormTitleWidget(text: 'Password'),
                            8.height(),
                            TextFormField(
                              controller: passwordController,
                              obscureText: hidePassword,
                              onChanged: (value) {
                                passwordError = null;
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.greyTextColor
                                        .withOpacity(0.2),
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
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.darkTextColor,
                                  height: 1.25,
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
                                errorText: passwordError,
                              ),
                            ),
                            16.height(),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: SvgPicture.asset(
                                    "assets/images/icons/checkbox.svg",
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'By creating an account, you agree to our',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Term & Conditions',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            36.height(),
                            PrimaryButton(
                              text: 'sign up',
                              icon: 'login.svg',
                              onPressed: () {
                                String emailText = emailController.text.trim();
                                String usernameText =
                                    usernameController.text.trim();
                                String passwordText =
                                    passwordController.text.trim();

                                if (emailText.isEmpty) {
                                  emailError = 'Enter your email';
                                } else if (!emailText.contains('@')) {
                                  emailError = 'Your email is wrong';
                                }

                                if (usernameText.isEmpty) {
                                  usernameError = 'Enter your username';
                                }

                                if (passwordText.isEmpty) {
                                  passwordError = 'Enter your password';
                                } else if (passwordText.length < 8) {
                                  passwordError =
                                      'Minimum password length is 8';
                                }

                                setState(() {});

                                if (emailError == null &&
                                    usernameError == null &&
                                    passwordError == null) {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) =>
                                          const VerificationPage(),
                                    ),
                                  );
                                }
                              },
                            )
                          ],
                        ),
                      ),
                      16.height(),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(
                                  color: AppColors.greyTextColor,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign in',
                                style: const TextStyle(
                                  color: AppColors.darkTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => const SignInPage(),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
      ),
    );
  }
}
