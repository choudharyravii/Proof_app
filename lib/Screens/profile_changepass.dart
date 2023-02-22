import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class ProfileChangePassword extends StatefulWidget {
  const ProfileChangePassword({super.key});

  @override
  State<ProfileChangePassword> createState() => _ProfileChangePasswordState();
}

class _ProfileChangePasswordState extends State<ProfileChangePassword> {
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
          Constants.capchangepassword,
          style: TextStyle(
              color: AppColors.greenchat,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
      ),
      body: Container(
        width: Common.displayWidth(context) * 1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.06,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                child: TextFormField(
                  validator: (val) {},
                  cursorHeight: 20,
                  autofocus: false,
                  onTap: () {},
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: AppColors.whitelig)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.whitelig)),
                    fillColor: AppColors.greytextfield,
                    filled: true,
                    hintText: 'Old Password',
                    prefixStyle: const TextStyle(color: Colors.white),
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
                height: Common.displayHeight(context) * 0.025,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                child: TextFormField(
                  validator: (val) {},
                  cursorHeight: 20,
                  autofocus: false,
                  onTap: () {},
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: AppColors.whitelig)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.whitelig)),
                    fillColor: AppColors.greytextfield,
                    filled: true,
                    hintText: 'New Password',
                    prefixStyle: const TextStyle(color: Colors.white),
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
                height: Common.displayHeight(context) * 0.025,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                child: TextFormField(
                  validator: (val) {},
                  cursorHeight: 20,
                  autofocus: false,
                  onTap: () {},
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: AppColors.whitelig)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.whitelig)),
                    fillColor: AppColors.greytextfield,
                    filled: true,
                    hintText: 'Confirm New Password',
                    prefixStyle: const TextStyle(color: Colors.white),
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
                height: Common.displayHeight(context) * 0.35,
              ),
              Common.customElevatedButton(
                  context, Constants.submit, () {}, AppColors.greenchat)
            ],
          ),
        ),
      ),
    );
  }
}
