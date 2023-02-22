import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class SapleshScreen extends StatefulWidget {
  const SapleshScreen({super.key});

  @override
  State<SapleshScreen> createState() => _SapleshScreenState();
}

class _SapleshScreenState extends State<SapleshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/LogSignUp");
      },
      child: Container(
        color: AppColors.white,
        height: Common.displayHeight(context),
        width: Common.displayWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.logo),
            const Text(
              "PROOF",
              style: TextStyle(
                  fontFamily: FontFamily.gillSans,
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                  color: AppColors.greenchat),
            ),
            const Text(
              "Social",
              style: TextStyle(
                  fontFamily: FontFamily.gillSans,
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: AppColors.greenchat),
            )
          ],
        ),
      ),
    ));
  }
}
