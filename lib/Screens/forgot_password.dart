import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';
import 'package:proof/Utilis/validator.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  var otpvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        leading: const SizedBox(),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: Ma,
                children: [
                  const Text(
                    Constants.forgotpassword,
                    style: TextStyle(
                        color: AppColors.greenchat,
                        fontWeight: FontWeight.w300,
                        fontFamily: FontFamily.futuraPT,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.02,
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.5,
                    child: const Center(
                      child: Text(
                        "Enter email associated with your account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "basicsanssf"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.15,
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.9,
                    child: TextFormField(
                      controller: emailController,
                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: const TextStyle(color: AppColors.black),
                      // controller: Controller,
                      decoration: InputDecoration(
                        fillColor: AppColors.greytextfield,
                        filled: true,
                        hintText: Constants.email,
                        prefixIcon: const Icon(Icons.email_outlined,color: AppColors.greyicon,),
                        suffixIcon: SizedBox(
                            height: 10,
                            width: 10,
                            child: InkWell(onTap: () {})),
                        prefixStyle: const TextStyle(color: Colors.white),
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
                    height: Common.displayHeight(context) * 0.41,
                  ),
                  Common.customElevatedButton(context, Constants.sendcode, () {
                    // buildSignup();
                    Navigator.pushNamed(context, "/ChangePassword");
                  }, AppColors.greenchat),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildSignup() {
    ///// email validation
    if (emailController.text.trim().isEmpty) {
      Common.showSnackBar(Constants.emptyEmail, context);
    } else if (!Validator.isValidEmail(emailController.text.trim())) {
      Common.showSnackBar(Constants.validEmail, context);
    } else {
      Navigator.pushNamed(context, '/ChangePassword');
    }
  }
}
