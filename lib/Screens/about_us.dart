import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: Common.displayHeight(context) * 0.13,
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
          Constants.capaboutus,
          style: TextStyle(
              color: AppColors.greenchat,
              fontWeight: FontWeight.w700,
              fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                Images.maskgroup,
                scale: 2,
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Constants.longpostLoremIpsum,
                style: TextStyle(color: AppColors.greyText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
