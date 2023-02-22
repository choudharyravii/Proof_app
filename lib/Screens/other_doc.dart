import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class OtherDoc extends StatefulWidget {
  const OtherDoc({super.key});

  @override
  State<OtherDoc> createState() => _OtherDocState();
}

class _OtherDocState extends State<OtherDoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
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
          Constants.capotherdocuments,
          style: TextStyle(
              color: AppColors.greenchat,
              fontSize: 19,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Covid Card",
                style: TextStyle(
                    fontSize: 21,
                    color: AppColors.black,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Image.asset(
                Images.covid,
                scale: 1.8,
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              const Text(
                "Drivers License or Passport",
                style: TextStyle(
                    fontSize: 21,
                    color: AppColors.black,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Image.asset(
                Images.drivelic,
                scale: 1.8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
