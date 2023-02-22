import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
          Constants.capprivacypolicy,
          style: TextStyle(
              color: AppColors.greenchat,
              fontWeight: FontWeight.w700,
              fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: Common.displayHeight(context) * 0.03,
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
    );
  }
}
