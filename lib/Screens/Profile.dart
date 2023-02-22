import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: Colors.white,
        toolbarHeight: _mediaQuery.size.height / 10,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                // right: 10,
                ),
            child: SizedBox(
              width: Common.displayWidth(context) * 1,
              height: 20,
              // color: Colors.amber,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Images.maskgroup,
                    scale: 2.6,
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.4,
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, "/NotificationProfile"),
                    child: Icon(
                      Icons.notifications_none_sharp,
                      color: AppColors.greyDivider,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.03,
                  ),
                  // ignore: prefer_const_constructors
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/SettingProfile");
                    },
                    child: Icon(
                      Icons.settings,
                      color: AppColors.greyDivider,
                      size: 30,
                    ),
                  )
                  // SizedBox(
                  //   width: Common.displayWidth(context) * 0.01,
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Common.displayHeight(context) * 0.28,
              width: Common.displayWidth(context) * 1,
              color: AppColors.greenuserprofile,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 95.0,
                      height: 95.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              Images.krish,
                            ),
                          ))),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        Constants.profilename,
                        style: TextStyle(
                          color: AppColors.whitelig,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.02,
                      ),
                      const Icon(
                        Icons.cloud_done_rounded,
                        color: AppColors.greenReview,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.01,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Text(
                      Constants.post2LoremIpsum,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.whitelig,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.020,
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.04,
              child: const Center(
                child: Text(
                  Constants.myproof,
                  style: TextStyle(
                      color: AppColors.greenuserprofile,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.010,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: AppColors.greytextfield,
            ),
            Material(
              elevation: 3,
              color: AppColors.white,
              child: Container(
                height: Common.displayHeight(context) * 0.09,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/ProfileStdResult");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Common.displayWidth(context) * 0.02,
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.1,
                        width: Common.displayWidth(context) * 0.035,
                        child: const CircleAvatar(
                          radius: 4,
                          backgroundColor: AppColors.yellowdot1,
                        ),
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.015,
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.1,
                        width: Common.displayWidth(context) * 0.035,
                        child: const CircleAvatar(
                          radius: 4,
                          backgroundColor: AppColors.yellowdot2,
                        ),
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.015,
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.1,
                        width: Common.displayWidth(context) * 0.035,
                        child: const CircleAvatar(
                          radius: 4,
                          backgroundColor: AppColors.yellowdot3,
                        ),
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.02,
                      ),
                      const Text(
                        'STD',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.01,
            ),
            Material(
              elevation: 3,
              color: AppColors.white,
              child: Container(
                height: Common.displayHeight(context) * 0.09,
                width: Common.displayWidth(context) * 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/OtherDoc");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Common.displayWidth(context) * 0.02,
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.1,
                        width: Common.displayWidth(context) * 0.035,
                        child: const CircleAvatar(
                          radius: 4,
                          backgroundColor: AppColors.greendot1,
                        ),
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.015,
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.1,
                        width: Common.displayWidth(context) * 0.035,
                        child: const CircleAvatar(
                          radius: 4,
                          backgroundColor: AppColors.greendot2,
                        ),
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.015,
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.1,
                        width: Common.displayWidth(context) * 0.035,
                        child: const CircleAvatar(
                          radius: 4,
                          backgroundColor: AppColors.greendot3,
                        ),
                      ),
                      SizedBox(
                        width: Common.displayWidth(context) * 0.02,
                      ),
                      const Text(
                        'COVID VACCINE',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.01,
            ),
            Material(
              elevation: 3,
              color: AppColors.white,
              child: Container(
                height: Common.displayHeight(context) * 0.09,
                width: Common.displayWidth(context) * 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Common.displayWidth(context) * 0.02,
                    ),
                    const Text(
                      'Search for STD Testing Center',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.1,
                    ),
                    const Icon(Icons.search)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.015,
            ),
            Image.asset(Images.collab)
          ],
        ),
      ),
    );
  }
}
