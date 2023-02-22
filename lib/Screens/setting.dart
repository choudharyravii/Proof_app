import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class SettingProfile extends StatefulWidget {
  const SettingProfile({super.key});

  @override
  State<SettingProfile> createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
  @override
  Widget build(BuildContext context) {
    var switchValue = true;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: Common.displayHeight(context) * 0.1,
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          Constants.setting,
          style: TextStyle(
              color: AppColors.greenchat,
              fontWeight: FontWeight.w600,
              fontSize: 22),
        ),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Common.displayHeight(context) * 0.65,
              width: Common.displayWidth(context) * 0.8,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/EditProfile"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, "/ProfileFindFriends"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Friends",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, "/ProfileChangePassword"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Change Password",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/AboutUs"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Subscription",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/AboutUs"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "About Us",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, "/PrivacyPolicy"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, "/TermNdCondition"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 25,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.02,
            ),
            Common.customElevatedButton(context, Constants.logout, () {
              Navigator.pushNamed(context, "/LogSignUp");
            }, AppColors.greenchat),
            SizedBox(
              height: Common.displayHeight(context) * 0.03,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, "/LogSignUp"),
              child: const Text(
                "Delete Account",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greenchat),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
