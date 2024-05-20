import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_shop/utils/colors.dart';
import 'package:tech_shop/utils/extensions.dart';
import 'package:tech_shop/utils/sizes.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  List<bool> genders = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/png/speakers_bg.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.darkTextColor.withOpacity(0.2)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 60,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/images/icons/arrow_long_left.svg',
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: SizeUtils.screenHeight(context),
                                        width: SizeUtils.screenWidth(context),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 40,
                                                    top: 40,
                                                    right: 40),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Gender',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    15.height(),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            genders[0] =
                                                                !genders[0];
                                                            genders[1] = false;
                                                            genders[2] = false;
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            width: 95,
                                                            height: 44,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: genders[0]
                                                                  ? AppColors
                                                                      .primaryColor
                                                                  : const Color(
                                                                      0xFFF3F6F8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                'Men',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: AppColors
                                                                      .darkTextColor,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            genders[1] =
                                                                !genders[1];
                                                            genders[0] = false;
                                                            genders[2] = false;
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            width: 95,
                                                            height: 44,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: genders[1]
                                                                  ? AppColors
                                                                      .primaryColor
                                                                  : const Color(
                                                                      0xFFF3F6F8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                'Women',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: AppColors
                                                                      .darkTextColor,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            genders[2] =
                                                                !genders[2];
                                                            genders[0] = false;
                                                            genders[1] = false;
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            width: 95,
                                                            height: 44,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: genders[2]
                                                                  ? AppColors
                                                                      .primaryColor
                                                                  : const Color(
                                                                      0xFFF3F6F8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                            child: const Center(
                                                              child: Text(
                                                                'Both',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: AppColors
                                                                      .darkTextColor,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              15.height(),
                                              const Divider(
                                                color: Color(0xFFF3F6F8),
                                              ),
                                              15.height(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 40, right: 40),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Price Rate',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    15.height(),
                                                    Image.asset(
                                                      'assets/images/png/bar.png',
                                                    ),
                                                    15.height(),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 145,
                                                          height: 44,
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      10),
                                                          decoration: BoxDecoration(
                                                              color: const Color(
                                                                  0xFFF3F6F8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child:
                                                              DropdownButtonHideUnderline(
                                                            child:
                                                                DropdownButton(
                                                              iconSize: 24,
                                                              onChanged:
                                                                  (value) {},
                                                              value: 1,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              dropdownColor:
                                                                  const Color(
                                                                      0xFFF3F6F8),
                                                              items: const [
                                                                DropdownMenuItem(
                                                                  value: 1,
                                                                  child: Text(
                                                                    'Min',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: AppColors
                                                                          .darkTextColor,
                                                                    ),
                                                                  ),
                                                                ),
                                                                DropdownMenuItem(
                                                                  value: 2,
                                                                  child: Text(
                                                                    'New In',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: AppColors
                                                                          .darkTextColor,
                                                                    ),
                                                                  ),
                                                                ),
                                                                DropdownMenuItem(
                                                                  value: 3,
                                                                  child: Text(
                                                                    'New In',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: AppColors
                                                                          .darkTextColor,
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 145,
                                                          height: 44,
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      10),
                                                          decoration: BoxDecoration(
                                                              color: const Color(
                                                                  0xFFF3F6F8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child:
                                                              DropdownButtonHideUnderline(
                                                            child:
                                                                DropdownButton(
                                                              iconSize: 24,
                                                              onChanged:
                                                                  (value) {},
                                                              value: 1,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              dropdownColor:
                                                                  const Color(
                                                                      0xFFF3F6F8),
                                                              items: const [
                                                                DropdownMenuItem(
                                                                  value: 1,
                                                                  child: Text(
                                                                    'Max',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: AppColors
                                                                          .darkTextColor,
                                                                    ),
                                                                  ),
                                                                ),
                                                                DropdownMenuItem(
                                                                  value: 2,
                                                                  child: Text(
                                                                    'New In',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: AppColors
                                                                          .darkTextColor,
                                                                    ),
                                                                  ),
                                                                ),
                                                                DropdownMenuItem(
                                                                  value: 3,
                                                                  child: Text(
                                                                    'New In',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      color: AppColors
                                                                          .darkTextColor,
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              15.height(),
                                              const Divider(
                                                color: Color(0xFFF3F6F8),
                                              ),
                                              15.height(),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 40),
                                                child: Text(
                                                  'Color',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              15.height(),
                                              SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 40),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 44,
                                                        height: 44,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: AppColors
                                                              .primaryColor,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(16),
                                                          child: SvgPicture.asset(
                                                              'assets/images/icons/check_black.svg'),
                                                        ),
                                                      ),
                                                      15.width(),
                                                      Container(
                                                        width: 44,
                                                        height: 44,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: const Color(
                                                              0xFF02C697),
                                                        ),
                                                      ),
                                                      15.width(),
                                                      Container(
                                                        width: 44,
                                                        height: 44,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: const Color(
                                                              0xFFF8B6C3),
                                                        ),
                                                      ),
                                                      15.width(),
                                                      Container(
                                                        width: 44,
                                                        height: 44,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: const Color(
                                                              0xFF0002FC),
                                                        ),
                                                      ),
                                                      15.width(),
                                                      Container(
                                                        width: 44,
                                                        height: 44,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: AppColors
                                                              .darkTextColor,
                                                        ),
                                                      ),
                                                      15.width(),
                                                      Container(
                                                        width: 44,
                                                        height: 44,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: const Color(
                                                              0xFF8F92A1),
                                                        ),
                                                      ),
                                                      15.width(),
                                                      Container(
                                                        width: 44,
                                                        height: 44,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Colors
                                                              .lightGreenAccent,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              15.height(),
                                              const Divider(
                                                color: Color(0xFFF3F6F8),
                                              ),
                                              15.height(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 40,
                                                    left: 40,
                                                    bottom: 20),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      width: 193,
                                                      height: 44,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    AppColors
                                                                        .primaryColor,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                )),
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'Apply Filters (4)',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: AppColors
                                                                .darkTextColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 96,
                                                      height: 44,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xFFF3F6F8),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                )),
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'Reset',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: AppColors
                                                                .darkTextColor,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              icon: SvgPicture.asset(
                                'assets/images/icons/filter.svg',
                              ),
                            )
                          ],
                        ),
                        60.height(),
                        const Text(
                          'Speakers',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '24 of 320',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.darkTextColor,
                              ),
                            ),
                            Container(
                              width: 98,
                              height: 35,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF3F6F8),
                                  borderRadius: BorderRadius.circular(12)),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  iconSize: 24,
                                  onChanged: (value) {},
                                  value: 1,
                                  borderRadius: BorderRadius.circular(10),
                                  dropdownColor: const Color(0xFFF3F6F8),
                                  items: const [
                                    DropdownMenuItem(
                                      value: 1,
                                      child: Text(
                                        'New In',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.darkTextColor,
                                        ),
                                      ),
                                    ),
                                    DropdownMenuItem(
                                      value: 2,
                                      child: Text(
                                        'New In',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.darkTextColor,
                                        ),
                                      ),
                                    ),
                                    DropdownMenuItem(
                                      value: 3,
                                      child: Text(
                                        'New In',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.darkTextColor,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color(0xFFF3F6F8),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  width: 145,
                                  height: 209,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/png/rounded_shape.png'),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                          'assets/images/png/beosound.png'),
                                      const Text(
                                        'Beosound 1',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.darkTextColor,
                                        ),
                                      ),
                                      const Text(
                                        '\$1,600',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.darkTextColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  width: 145,
                                  height: 209,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/png/rounded_shape.png'),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                          'assets/images/png/beosound.png'),
                                      const Text(
                                        'Beosound 1',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.darkTextColor,
                                        ),
                                      ),
                                      const Text(
                                        '\$1,600',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.darkTextColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            20.height(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  width: 145,
                                  height: 209,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/png/rounded_shape.png'),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                          'assets/images/png/beosound.png'),
                                      const Text(
                                        'Beosound 1',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.darkTextColor,
                                        ),
                                      ),
                                      const Text(
                                        '\$1,600',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.darkTextColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  width: 145,
                                  height: 209,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/png/rounded_shape.png'),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                          'assets/images/png/beosound.png'),
                                      const Text(
                                        'Beosound 1',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.darkTextColor,
                                        ),
                                      ),
                                      const Text(
                                        '\$1,600',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.darkTextColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: AppColors.primaryColor,
        child: SvgPicture.asset('assets/images/icons/shopping.svg'),
      ),
    );
  }
}
