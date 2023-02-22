import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
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
            Image.asset(Images.logo),
            SizedBox(
              height: Common.displayHeight(context) * 0.07,
            ),
            Container(
              height: Common.displayHeight(context) * 0.5,
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
                          width: 180,
                          child: Text(
                            Constants.enablelocation,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.greyintro,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: Common.displayHeight(context) * 0.03,
                    ),
                    Image.asset(
                      Images.locationicon,
                      scale: 2,
                    ),
                    SizedBox(
                      height: Common.displayHeight(context) * 0.03,
                    ),
                    const SizedBox(
                        width: 270,
                        child: Text(
                          Constants.proofdummy2,
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
                          context, Constants.allow, () {
                        Navigator.pushNamed(context, "/MainScreen");
                      }, AppColors.greenchat),
                    ),
                    SizedBox(
                      height: Common.displayHeight(context) * 0.03,
                    ),
                    const SizedBox(
                        width: 170,
                        child: Text(
                          Constants.dontallow,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.greyintro,
                              fontWeight: FontWeight.w500),
                        )),
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
