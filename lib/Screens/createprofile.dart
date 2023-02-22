import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class ChnageProfile extends StatefulWidget {
  const ChnageProfile({super.key});

  @override
  State<ChnageProfile> createState() => _ChnageProfileState();
}

class _ChnageProfileState extends State<ChnageProfile> {
  final pinController = TextEditingController();
  var otpvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        toolbarHeight: 20,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: Ma,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: Navigator.of(context).pop,
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              // ignore: prefer_const_constructors
              Text(
                Constants.createprofile,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.greenchat,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.04,
              ),
              Container(
                height: 115,
                width: 115,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/man.png",
                      scale: 2.5,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child:
                            Image.asset("assets/images/plus.png", scale: 2.5)),
                  ],
                ),
              ),
              // Image.asset("assets/images/logo.png"),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              // ignore: prefer_const_constructors
              Text(
                Constants.uploadprofilepic,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.greyText,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.06,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                child: TextFormField(
                  cursorHeight: 20,
                  autofocus: false,
                  onTap: () {},
                  style: const TextStyle(color: AppColors.black),
                  // controller: Controller,
                  decoration: InputDecoration(
                    fillColor: AppColors.greytextfield,
                    filled: true,
                    hintText: Constants.yourname,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                // height: Common.displayHeight(context) * 0.4,
                child: TextFormField(
                  cursorHeight: 20,
                  maxLines: 6,
                  autofocus: false,
                  onTap: () {},
                  style: const TextStyle(color: AppColors.black),
                  // controller: Controller,
                  decoration: InputDecoration(
                    fillColor: AppColors.greytextfield,
                    filled: true,

                    hintText: Constants.bio,
                    // hintStyle: ,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.05,
              ),
              Common.customElevatedButton(context, Constants.continuee, () {
                Navigator.pushNamed(context, '/FindFriends');
              }, AppColors.greenchat),
            ],
          ),
        ),
      ),
    );
  }
}
