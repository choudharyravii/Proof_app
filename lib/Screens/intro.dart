import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Common.displayHeight(context),
        width: Common.displayWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // height: 400,
              child: Image.asset(
                Images.logob,
                scale: 2,
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.07,
            ),
            Container(
              height: Common.displayHeight(context) * 0.35,
              width: Common.displayWidth(context) * 0.8,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Center(
                      child: SizedBox(
                          width: 100,
                          child: Text(
                            Constants.Welcometp,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.greyintro,
                                fontSize: 18,
                                fontFamily: FontFamily.futuram,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: Common.displayHeight(context) * 0.03,
                    ),
                    const SizedBox(
                        width: 270,
                        child: Text(
                          Constants.midLoremIpsum,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.greyintro,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      height: Common.displayHeight(context) * 0.03,
                    ),
                    Container(
                      width: Common.displayWidth(context) * 0.60,
                      child: Common.customElevatedButton(
                          context, Constants.getstart, () {
                        Navigator.pushNamed(context, "/MainScreen");
                      }, AppColors.greenchat),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
