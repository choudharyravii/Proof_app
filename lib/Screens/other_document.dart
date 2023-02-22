import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class OtherDocument extends StatefulWidget {
  const OtherDocument({super.key});

  @override
  State<OtherDocument> createState() => _OtherDocumentState();
}

class _OtherDocumentState extends State<OtherDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80,
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Other Document",
            style: TextStyle(
                color: AppColors.greenchat,
                fontFamily: FontFamily.futuram,
                fontSize: 22,
                fontWeight: FontWeight.w600),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 28.0),
              child: Center(
                child: Text(
                  "SKip",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.futuram,
                      fontSize: 13),
                ),
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: Common.displayHeight(context),
          width: Common.displayWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.05,
              ),
              Container(
                height: 115,
                width: 115,
                child: Center(
                  child: Stack(
                    // alignment: ,
                    children: [
                      Image.asset(
                        Images.document,
                        scale: 2,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset("assets/images/plus.png",
                              scale: 2.5)),
                    ],
                  ),
                ),
              ),
              // Image.asset("assets/images/logo.png"),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              // ignore: prefer_const_constructors
              Text(
                Constants.uploaddocument,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 215, 214, 214),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: Common.displayHeight(context) * 0.06,
              ),
              Container(
                height: 115,
                width: 115,
                child: Center(
                  child: Stack(
                    // alignment: ,
                    children: [
                      Image.asset(
                        Images.card,
                        scale: 2,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset("assets/images/plus.png",
                              scale: 2.5)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.01,
              ),
              Text(
                Constants.uploadlicense,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 215, 214, 214),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.13,
              ),
              Common.customElevatedButton(context, Constants.continuee, () {
                Navigator.pushNamed(context, '/Intro');
              }, AppColors.greenchat),
            ],
          ),
        ));
  }
}
