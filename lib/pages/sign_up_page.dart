import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/pages/sign_in_page.dart';
import 'package:tech_shop/pages/verification_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';

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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                top: 40,
                right: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/icons/location.svg"),
                      5.width(),
                      const Text(
                        'Hanoi, Vietnam',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.darkTextColor,
                        ),
                      ),
                    ],
                  ),
                  60.height(),
                  const Text(
                    "Getting Started",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.darkTextColor,
                    ),
                  ),
                  20.height(),
                  Text(
                    'Create an account to continue!',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkTextColor.withOpacity(0.6),
                    ),
                  ),
                  40.height(),
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyTextColor,
                          ),
                        ),
                        10.height(),
                        SizedBox(
                          height: 44,
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              emailError = null;
                              setState(() {});
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
                                padding: const EdgeInsets.all(13),
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
                              errorText: emailError,
                            ),
                          ),
                        ),
                        40.height(),
                        const Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyTextColor,
                          ),
                        ),
                        10.height(),
                        SizedBox(
                          height: 44,
                          child: TextFormField(
                            controller: usernameController,
                            onChanged: (value) {
                              usernameError = null;
                              setState(() {});
                            },
                            keyboardType: TextInputType.name,
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
                                padding: const EdgeInsets.all(8.0),
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
                              errorText: usernameError,
                            ),
                          ),
                        ),
                        40.height(),
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyTextColor,
                          ),
                        ),
                        10.height(),
                        SizedBox(
                          height: 44,
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: hidePassword,
                            onChanged: (value) {
                              passwordError = null;
                              setState(() {});
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
                                padding: const EdgeInsets.all(11),
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
                        ),
                        10.height(),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                        20.height(),
                        SizedBox(
                          width: double.infinity,
                          height: 44,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
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
                                passwordError = 'Minimum password length is 8';
                              }

                              setState(() {});

                              if (emailError == null &&
                                  usernameError == null &&
                                  passwordError == null) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => const VerificationPage(),
                                  ),
                                );
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(),
                                const Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.darkTextColor,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/icons/login.svg',
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  20.height(),
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
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Divider(
                  color: Color(0xFFF3F6F8),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0002FC),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/images/icons/facebook.svg',
                          ),
                          const Text(
                            'Connect with Facebook',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
