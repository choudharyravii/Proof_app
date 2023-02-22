import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class Add_Friend extends StatefulWidget {
  const Add_Friend({super.key});

  @override
  State<Add_Friend> createState() => _Add_FriendState();
}

class _Add_FriendState extends State<Add_Friend> {
  bool button = false;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Common.displayHeight(context) * 0.1,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Image.asset(
          Images.maskgroup,
          scale: 3,
        ),
        actions: [
          Image.asset(
            Images.threedoticon,
            scale: 2,
          ),
          SizedBox(
            width: Common.displayWidth(context) * 0.03,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Common.displayHeight(context) * 0.38,
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
                            fit: BoxFit.cover,
                            image: AssetImage(
                              Images.ramg,
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
                  SizedBox(
                    height: Common.displayHeight(context) * 0.02,
                  ),
                  button
                      ? Common.customsmallbutton2(context, "Accept Request",
                          () {
                          Navigator.pushNamed(context, "/friendconfirm");
                        }, AppColors.white, AppColors.greenuserprofile)
                      : Common.customsmallbutton2(context, "Add Friend", () {
                          setState(() {
                            button = !button;
                          });
                        }, AppColors.white, AppColors.greenuserprofile)
                ],
              ),
            ),
            Material(
              elevation: 3,
              color: AppColors.white,
              child: Container(
                height: Common.displayHeight(context) * 0.09,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Common.displayWidth(context) * 0.02,
                    ),
                    SizedBox(
                      height: Common.displayHeight(context) * 0.1,
                      width: Common.displayWidth(context) * 0.035,
                      child: CircleAvatar(
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
                      child: CircleAvatar(
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
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: AppColors.yellowdot3,
                      ),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.02,
                    ),
                    const Text(
                      'STD',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
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
                    SizedBox(
                      height: Common.displayHeight(context) * 0.1,
                      width: Common.displayWidth(context) * 0.035,
                      child: CircleAvatar(
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
                      child: CircleAvatar(
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
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: AppColors.greendot3,
                      ),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.02,
                    ),
                    const Text(
                      'COVID VACCINE',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.01,
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
