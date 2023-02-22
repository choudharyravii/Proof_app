import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool? _isCheck1 = false;
  bool? _isCheck2 = false;
  bool? _isCheck3 = false;
  bool switchValue = true;
  var selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          automaticallyImplyLeading: false,
          toolbarHeight: Common.displayHeight(context) * 0.18,
          actions: [
            Container(
              width: Common.displayWidth(context) * 0.93,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Common.displayHeight(context) * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Images.maskgroup,
                        scale: 3,
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.05,
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: Common.displayWidth(context) * 0.3,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                // underline: true,
                                hint: Container(
                                  child: const Text(
                                    'My Interests',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                value: selectedValue,
                                items: [
                                  DropdownMenuItem(
                                    value: 'Option 1',
                                    child: Row(
                                      children: [
                                        const Text('Option 1'),
                                        Checkbox(
                                          activeColor: const Color.fromRGBO(
                                              0, 172, 155, 1),
                                          value: _isCheck1,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isCheck1 = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Option 2',
                                    child: Row(
                                      children: [
                                        const Text('Option 2'),
                                        Checkbox(
                                          activeColor: const Color.fromRGBO(
                                              0, 172, 155, 1),
                                          value: _isCheck2,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isCheck2 = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Option 3',
                                    child: Row(
                                      children: [
                                        const Text('Option 3'),
                                        Checkbox(
                                          activeColor: const Color.fromRGBO(
                                              0, 172, 155, 1),
                                          value: _isCheck3,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isCheck3 = value;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.05,
                      ),
                      Image.asset(
                        Images.searchicon,
                        scale: 3,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.01,
                  ),
                  Center(
                    child: SizedBox(
                      width: Common.displayWidth(context) * 0.90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Common.displayWidth(context) * 0.72,
                            child: const Text(
                              Constants.makeyour,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: AppColors.black),
                            ),
                          ),
                          Transform.scale(
                            scale: 0.80,
                            child: CupertinoSwitch(
                              // This bool value toggles the switch.
                              value: switchValue,
                              activeColor: const Color.fromRGBO(0, 172, 155, 1),
                              onChanged: (bool? value) {
                                // This is called when the user toggles the switch.
                                setState(() {
                                  switchValue = value ?? false;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        body: SlidingUpPanel(
          body: StreamBuilder<Object>(
              stream: null,
              builder: (context, snapshot) {
                return Column(
                  children: [
                    Image.asset(
                      Images.mapsimg,
                      scale: 1,
                    ),
                  ],
                );
              }),
          minHeight: Common.displayHeight(context) * 0.12,
          maxHeight: Common.displayHeight(context) * 0.64,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          color: AppColors.greenchat,
          panel: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.85,
                height: Common.displayHeight(context) * 0.08,
                child: Row(
                  children: [
                    SizedBox(
                      height: Common.displayHeight(context) * 0.1,
                      child: const CircleAvatar(
                        backgroundColor: AppColors.red,
                        backgroundImage: AssetImage(
                          Images.placeicon,
                        ),
                        radius: 30,
                      ),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Place Name',
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.white,
                              fontFamily: FontFamily.futuram,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: Common.displayHeight(context) * 0.025,
                          child: const Text('Restaurant',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: FontFamily.futuram,
                                color: AppColors.greytextfield,
                              )),
                        ),
                        const Text(
                          'Open',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.greenforest,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.22,
                    ),
                    Row(
                      children: [
                        const Text("4.5",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: FontFamily.futuram,
                                color: AppColors.greytextfield,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: Common.displayWidth(context) * 0.02,
                        ),
                        SizedBox(
                            width: 25, child: Image.asset(Images.staricon)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Container(
                width: Common.displayWidth(context) * 0.8,
                child: Row(
                  children: [
                    Image.asset(Images.clockicon),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      '11:00am - 10:00 pm',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.futuram,
                          color: AppColors.greytextfield,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 35),
                child: Row(
                  children: [
                    Image.asset(Images.arrowicon),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      '1234 Street Name, Atlanta, GA',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.futuram,
                          color: AppColors.greytextfield,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 35),
                child: Row(
                  children: [
                    Image.asset(Images.phoneicon),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      '123-131-2311',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.futuram,
                          color: AppColors.greytextfield,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.05,
                    ),
                    Row(
                      children: [
                        Image.asset(Images.globelicon),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'www.place.com',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: FontFamily.futuram,
                              color: AppColors.greytextfield,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: Common.displayHeight(context) * 0.03),
              SizedBox(
                width: Common.displayWidth(context) * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'REVIEWS',
                      style: TextStyle(fontSize: 14, color: AppColors.white),
                    ),
                    const Text(
                      'Leave a Review +',
                      style:
                          TextStyle(fontSize: 11, color: AppColors.greenforest),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Common.displayHeight(context) * 0.01),
              Container(
                // color: Colors.red,
                height: Common.displayHeight(context) * 0.3,
                child: SingleChildScrollView(
                  child: Expanded(
                      child: Column(
                    children: [
                      Container(
                        height: Common.displayHeight(context) * 0.17,
                        width: Common.displayWidth(context) * 0.8,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.greenReview),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              // color: Colors.red,
                              width: Common.displayWidth(context) * 0.75,
                              // height: Common.displayHeight(context) * 0.1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const CircleAvatar(
                                      backgroundColor:
                                          Color.fromRGBO(252, 158, 158, 1),
                                      backgroundImage: AssetImage(Images.man1),
                                      radius: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      'Persons Name',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: FontFamily.futuram,
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width:
                                          Common.displayWidth(context) * 0.24,
                                      // width: double.infinity,
                                    ),
                                    const Text(
                                      '2m ago',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: FontFamily.futuram,
                                          color: AppColors.greytextfield,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Common.displayWidth(context) * 0.7,
                              child: const Text(
                                Constants.midLoremIpsum,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: FontFamily.futuram,
                                    color: AppColors.greytextfield,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                            SizedBox(
                              height: Common.displayHeight(context) * 0.01,
                            ),
                            SizedBox(
                              width: Common.displayWidth(context) * 0.7,
                              child: Row(
                                children: [
                                  Image.asset(
                                    Images.like,
                                    scale: 2,
                                  ),
                                  SizedBox(
                                    width: Common.displayWidth(context) * 0.1,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.02,
                      ),
                      Container(
                        height: Common.displayHeight(context) * 0.17,
                        width: Common.displayWidth(context) * 0.8,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.greenReview),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              // color: Colors.red,
                              width: Common.displayWidth(context) * 0.75,
                              // height: Common.displayHeight(context) * 0.1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const CircleAvatar(
                                      backgroundColor:
                                          Color.fromRGBO(252, 158, 158, 1),
                                      backgroundImage: AssetImage(Images.man1),
                                      radius: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      'Persons Name',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: FontFamily.futuram,
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width:
                                          Common.displayWidth(context) * 0.24,
                                      // width: double.infinity,
                                    ),
                                    const Text(
                                      '2m ago',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontFamily: FontFamily.futuram,
                                          color: AppColors.greytextfield,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Common.displayWidth(context) * 0.7,
                              child: const Text(
                                Constants.midLoremIpsum,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: FontFamily.futuram,
                                    color: AppColors.greytextfield,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                            SizedBox(
                              height: Common.displayHeight(context) * 0.01,
                            ),
                            SizedBox(
                              width: Common.displayWidth(context) * 0.7,
                              child: Row(
                                children: [
                                  Image.asset(
                                    Images.like,
                                    scale: 2,
                                  ),
                                  SizedBox(
                                    width: Common.displayWidth(context) * 0.1,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.02,
                      ),
                    ],
                  )),
                ),
              )
            ],
          ),
        ));
  }
}
