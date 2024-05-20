import 'package:flutter/material.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/utils/sizes.dart';
import 'package:tech_shop/widgets/curret_location_widget.dart';
import 'package:tech_shop/widgets/primary_button.dart';
import 'package:tech_shop/widgets/text_widgets/subtitle_text_widget.dart';
import 'package:tech_shop/widgets/text_widgets/title_text_widget.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final formKey = GlobalKey<FormState>();

  List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  int codeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CurretLocationWidget(text: 'Hanoi, Vietnam'),
              54.height(),
              const TitleTextWidget(text: 'OTP Authentication'),
              8.height(),
              const SubtitleTextWidget(
                text:
                    'An authentication code has been sent to (+84) 999 999 999',
              ),
              30.height(),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: (SizeUtils.screenWidth(context) - 80) * 0.20,
                          child: TextFormField(
                            controller: controllers[0],
                            readOnly: true,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: codeIndex == 0
                                      ? AppColors.greyTextColor.withOpacity(0.2)
                                      : AppColors.darkTextColor
                                          .withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: (SizeUtils.screenWidth(context) - 80) * 0.20,
                          child: TextFormField(
                            controller: controllers[1],
                            readOnly: true,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: codeIndex == 1
                                      ? AppColors.greyTextColor.withOpacity(0.2)
                                      : AppColors.darkTextColor
                                          .withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: (SizeUtils.screenWidth(context) - 80) * 0.20,
                          child: TextFormField(
                            controller: controllers[2],
                            readOnly: true,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: codeIndex == 2
                                      ? AppColors.greyTextColor.withOpacity(0.2)
                                      : AppColors.darkTextColor
                                          .withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: (SizeUtils.screenWidth(context) - 80) * 0.20,
                          child: TextFormField(
                            controller: controllers[3],
                            readOnly: true,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: codeIndex == 3
                                      ? AppColors.greyTextColor.withOpacity(0.2)
                                      : AppColors.darkTextColor
                                          .withOpacity(0.2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    50.height(),
                    PrimaryButton(
                      text: 'Continue',
                      icon: 'arrow_long_right.svg',
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: SizeUtils.screenWidth(context),
                  height: 200,
                  child: GridView(
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 15,
                    ),
                    children: [
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '1';
                            codeIndex++;
                          }

                          setState(() {});
                        },
                        child: const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '2';
                            codeIndex++;
                          }

                          setState(() {});
                        },
                        child: const Text(
                          '2',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '3';
                            codeIndex++;
                          }
                          setState(() {});
                        },
                        child: const Text(
                          '3',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '4';
                            codeIndex++;
                          }
                          setState(() {});
                        },
                        child: const Text(
                          '4',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '5';
                            codeIndex++;
                          }
                          setState(() {});
                        },
                        child: const Text(
                          '5',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '6';
                            codeIndex++;
                          }
                          setState(() {});
                        },
                        child: const Text(
                          '6',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '7';
                            codeIndex++;
                          }
                        },
                        child: const Text(
                          '7',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '8';
                            codeIndex++;
                          }
                        },
                        child: const Text(
                          '8',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '9';
                            codeIndex++;
                          }
                        },
                        child: const Text(
                          '9',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      const SizedBox(),
                      TextButton(
                        onPressed: () {
                          if (codeIndex == -1) {
                            codeIndex++;
                          }
                          if (codeIndex <= 3) {
                            controllers[codeIndex].text = '0';
                            codeIndex++;
                          }
                        },
                        child: const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (codeIndex == 4) {
                            codeIndex--;
                          }
                          if (codeIndex >= 0) {
                            controllers[codeIndex--].text = '';
                            setState(() {});
                          }
                        },
                        icon: const Icon(
                          Icons.backspace_outlined,
                          color: AppColors.darkTextColor,
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
    );
  }
}
