import 'package:flutter/material.dart';
import 'package:proof/Provider/find_frinds_pov.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';
import 'package:proof/Utilis/validator.dart';
import 'package:provider/provider.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool hidden2 = true;
  bool nalue = true;
  // bool? value = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // String hint = 'Email';
    // bool hidden = true;
    // Color color = Colors.black;
    // final emailcontroller = TextEditingController();
    // final passwordcontroller = TextEditingController();

    return Consumer<FindFriendsPov>(builder: (context, items, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: Common.displayHeight(context) * 0.05,
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
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    borderSide: BorderSide(color: AppColors.whitelig)),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    borderSide: BorderSide(color: AppColors.whitelig)),
                fillColor: AppColors.greytextfield,
                filled: true,
                hintText: 'Email',
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: AppColors.greyicon,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide: const BorderSide(color: Colors.white, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.015,
          ),
          SizedBox(
            width: Common.displayWidth(context) * 0.9,
            child: TextFormField(
              controller: passwordController,
              obscureText: hidden2,
              validator: (val) {},

              cursorHeight: 20,
              autofocus: false,
              onTap: () {},
              style: const TextStyle(color: AppColors.black),
              // controller: Controller,
              decoration: InputDecoration(
                fillColor: AppColors.greytextfield,
                filled: true,
                hintText: Constants.password,
                prefixIcon: const Icon(
                  Icons.lock_open_outlined,
                  color: AppColors.greyicon,
                ),
                // suffixIcon: Container(
                //     height: 10, width: 10, child: InkWell(onTap: () {})),
                prefixStyle: const TextStyle(color: Colors.white),
                suffixIcon: SizedBox(
                    height: 10,
                    width: 10,
                    child: InkWell(
                        child: Icon(
                          hidden2 == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.greyicon,
                        ),
                        onTap: () {
                          setState(() {
                            hidden2 = !hidden2;
                          });
                        })),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    borderSide: BorderSide(color: AppColors.whitelig)),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  borderSide: BorderSide(color: AppColors.whitelig),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide: const BorderSide(color: Colors.white, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Common.displayWidth(context) * 0.12,
                child: Image.asset(
                  Images.fb,
                ),
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.015,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.11,
                child: Image.asset(
                  Images.google,
                ),
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.015,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.13,
                child: Image.asset(
                  Images.apple,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.06,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/ForgotPassword');
            },
            // ignore: prefer_const_constructors
            child: Text(
              Constants.forgotpassword,
              // ignore: prefer_const_constructors
              style: TextStyle(
                  color: AppColors.bluelink,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.013,
          ),
          Common.customElevatedButton(context, Constants.loginCap, () {
            Navigator.pushNamed(context, '/ContactAccess');
            nalue ? const Text("") : Common.showSnackBar(items.error, context);
          }, AppColors.greenchat),
          SizedBox(
            height: Common.displayHeight(context) * 0.03,
          ),
        ],
      );
    });
  }

  buildSignup() {
    ///// email validation
    if (emailController.text.trim().isEmpty) {
      Common.showSnackBar(Constants.emptyEmail, context);
    } else if (!Validator.isValidEmail(emailController.text.trim())) {
      Common.showSnackBar(Constants.validEmail, context);
    } else if (passwordController.text.trim().isEmpty) {
      Common.showSnackBar(Constants.emptyPassword, context);
    } else if (passwordController.text.length < 8) {
      Common.showSnackBar(Constants.passGreaterThan, context);
    } else if (Validator.isValidPassword(passwordController.text)) {
      Common.showSnackBar(Constants.passwordShouldContain, context);
    } else if (passwordController.text.length > 17) {
      Common.showSnackBar(Constants.passLessThan, context);
    } else {
      Navigator.pushNamed(context, '/ContactAccess');
    }
  }
}
