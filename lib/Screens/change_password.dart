import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';
import 'package:proof/Utilis/validator.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final passwordController = TextEditingController();
  final cnfrmpasswordController = TextEditingController();
  final codeController = TextEditingController();
  bool hidden = true;
  bool hidden2 = true;
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
              const Text(
                Constants.resetpassword,
                style: TextStyle(
                    color: AppColors.greenchat,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.futuraPT,
                    fontSize: 22),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.12,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                child: TextFormField(
                  controller: codeController,
                  cursorHeight: 20,
                  autofocus: false,
                  onTap: () {},
                  style: const TextStyle(color: AppColors.black),
                  // controller: Controller,
                  decoration: InputDecoration(
                    fillColor: AppColors.greytextfield,
                    filled: true,
                    hintText: Constants.code,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 10),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        borderSide: BorderSide(color: AppColors.whitelig)),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      borderSide: BorderSide(color: AppColors.whitelig),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                child: TextFormField(
                  obscureText: hidden,
                  controller: passwordController,
                  cursorHeight: 20,
                  autofocus: false,
                  onTap: () {},
                  style: const TextStyle(color: AppColors.black),
                  // controller: Controller,
                  decoration: InputDecoration(
                    fillColor: AppColors.greytextfield,
                    filled: true,
                    hintText: Constants.newpassword,
                    suffixIcon: Container(
                        height: 10,
                        width: 10,
                        child: InkWell(
                            child: Icon(hidden == true
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onTap: () {
                              setState(() {
                                hidden = !hidden;
                              });
                            })),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 10),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        borderSide: BorderSide(color: AppColors.whitelig)),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      borderSide: BorderSide(color: AppColors.whitelig),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                child: TextFormField(
                  obscureText: hidden2,
                  controller: cnfrmpasswordController,
                  cursorHeight: 20,
                  autofocus: false,
                  onTap: () {},
                  style: const TextStyle(color: AppColors.black),
                  // controller: Controller,
                  decoration: InputDecoration(
                    fillColor: AppColors.greytextfield,
                    filled: true,
                    hintText: Constants.confirmpassword,
                    suffixIcon: Container(
                        height: 10,
                        width: 10,
                        child: InkWell(
                            child: Icon(hidden2 == true
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onTap: () {
                              setState(() {
                                hidden2 = !hidden2;
                              });
                            })),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 10),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        borderSide: BorderSide(color: AppColors.whitelig)),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      borderSide: BorderSide(color: AppColors.whitelig),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn’t receive a email?",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.black),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.02,
                  ),
                  const Text(
                    "Resend Code",
                    style: TextStyle(color: AppColors.bluelink),
                  ),
                ],
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Common.customElevatedButton(context, Constants.confirm, () {
                Navigator.pushNamed(context, '/ChnageProfile');
              }, AppColors.greenchat),
            ],
          ),
        ),
      ),
    );
  }

  buildSignup() {
    ///// email validation

    if (passwordController.text.trim().isEmpty) {
      Common.showSnackBar(Constants.emptyPassword, context);
    } else if (codeController.text.trim().isEmpty) {
      Common.showSnackBar(Constants.emptyPassword, context);
    } else if (passwordController.text.length < 8) {
      Common.showSnackBar(Constants.passGreaterThan, context);
    } else if (cnfrmpasswordController.text != passwordController.text) {
      Common.showSnackBar(Constants.cnfrmpass, context);
    } else if (Validator.isValidPassword(passwordController.text)) {
      Common.showSnackBar(Constants.passwordShouldContain, context);
    } else if (passwordController.text.length > 17) {
      Common.showSnackBar(Constants.passLessThan, context);
    } else {
      Navigator.pushNamed(context, '/Verfication');
    }
  }
}
