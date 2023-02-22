import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class UploadReport extends StatefulWidget {
  const UploadReport({super.key});

  @override
  State<UploadReport> createState() => _UploadReportState();
}

class _UploadReportState extends State<UploadReport> {
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
            "Upload Report",
            style: TextStyle(
                color: AppColors.greenchat,
                fontFamily: FontFamily.futuram,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SizedBox(
          height: Common.displayHeight(context),
          width: Common.displayWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.14,
              ),
              Container(
                height: 135,
                width: 135,
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
                          child:
                              Image.asset("assets/images/plus.png", scale: 2)),
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
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: Common.displayHeight(context) * 0.13,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.94,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          color: AppColors.greenchat,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: Text(
                          "Planned Parenthood",
                          style:
                              TextStyle(color: AppColors.white, fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.035,
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          color: AppColors.greenchat,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: Text(
                          "Quest Diagnostics",
                          style:
                              TextStyle(color: AppColors.white, fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.035,
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          color: AppColors.greenchat,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: Text(
                          "Lab Corp",
                          style:
                              TextStyle(color: AppColors.white, fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.035,
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          color: AppColors.greenchat,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: Text(
                          "Others",
                          style:
                              TextStyle(color: AppColors.white, fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.055,
              ),
              Common.customElevatedButton(context, Constants.continuee, () {
                Navigator.of(context).pop();
              }, AppColors.greenchat),
            ],
          ),
        ));
  }
}
