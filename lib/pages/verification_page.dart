import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/pages/home_page.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/utils/sizes.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final formKey = GlobalKey<FormState>();

  List<String> code = ['', '', '', ''];

  int codeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            top: 40,
            right: 40,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
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
                      "OTP Authentication",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkTextColor,
                      ),
                    ),
                    20.height(),
                    Text(
                      'An authentication code has been sent to (+84) 999 999 999',
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
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: (SizeUtils.screenWidth(context) - 80) *
                                    0.20,
                                child: TextFormField(
                                  initialValue: code[0],
                                  // readOnly: true,
                                  maxLength: 1,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                  decoration: InputDecoration(
                                    counterStyle: const TextStyle(
                                      height: double.minPositive,
                                    ),
                                    counterText: "",
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: AppColors.darkTextColor
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: AppColors.greyTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: (SizeUtils.screenWidth(context) - 80) *
                                    0.20,
                                child: TextFormField(
                                  initialValue: code[1],
                                  maxLength: 1,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                  decoration: InputDecoration(
                                    counterStyle: const TextStyle(
                                      height: double.minPositive,
                                    ),
                                    counterText: "",
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: AppColors.darkTextColor
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: AppColors.greyTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: (SizeUtils.screenWidth(context) - 80) *
                                    0.20,
                                child: TextFormField(
                                  initialValue: code[2],
                                  maxLength: 1,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                  decoration: InputDecoration(
                                    counterStyle: const TextStyle(
                                      height: double.minPositive,
                                    ),
                                    counterText: "",
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: AppColors.darkTextColor
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: AppColors.greyTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: (SizeUtils.screenWidth(context) - 80) *
                                    0.20,
                                child: TextFormField(
                                  initialValue: code[3],
                                  maxLength: 1,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                  decoration: InputDecoration(
                                    counterStyle: const TextStyle(
                                      height: double.minPositive,
                                    ),
                                    counterText: "",
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: AppColors.darkTextColor
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: AppColors.greyTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          60.height(),
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
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => HomePage(),
                                    ),
                                  );
                                }
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(),
                                  const Text(
                                    'Continue',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.darkTextColor,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/icons/arrow_long_right.svg',
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                          code[codeIndex] = '1';
                          codeIndex++;
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
                        onPressed: () {},
                        child: const Text(
                          '2',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '3',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '4',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '5',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '6',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '7',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '8',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
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
                        onPressed: () {},
                        child: const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.darkTextColor,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
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
