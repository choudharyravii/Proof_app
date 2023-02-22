import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';
import 'package:proof/Utilis/validator.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  String? countryCodeValue = "+1";
  String? initialSelection = "US";
  String? countryCodeName;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cnfrmpasswordController = TextEditingController();
  bool hidden = true;
  bool hidden2 = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: Common.displayHeight(context) * 0.05,
          ),
          //email
          SizedBox(
            width: Common.displayWidth(context) * 0.9,
            child: TextFormField(
              controller: emailController,
              cursorHeight: 20,
              autofocus: false,
              onTap: () {},
              style: TextStyle(color: AppColors.black),
              // controller: Controller,
              decoration: InputDecoration(
                fillColor: AppColors.greytextfield,
                filled: true,
                hintText: Constants.email,
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: AppColors.greyicon,
                ),
                suffixIcon: SizedBox(
                    height: 10, width: 10, child: InkWell(onTap: () {})),
                prefixStyle: const TextStyle(color: Colors.white),
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
            height: Common.displayHeight(context) * 0.015,
          ),
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm//
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm//
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm//
          //mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm//
          SizedBox(
            width: Common.displayWidth(context) * 0.9,
            child: TextFormField(
              // controller: emailController,
              cursorHeight: 20,
              autofocus: false,
              onTap: () {},
              style: TextStyle(color: AppColors.black),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                LengthLimitingTextInputFormatter(15),
                FilteringTextInputFormatter.deny(RegExp(
                  r"^[\\{} ,'-]*$@",
                )),
              ],

              // controller: Controller,
              decoration: InputDecoration(
                fillColor: AppColors.greytextfield,
                filled: true,
                hintText: Constants.phonenumber,
                prefixIconConstraints: BoxConstraints.tight(
                    Size(countryCodeValue!.length == 2 ? 110 : 150, 50)),
                prefixIcon: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.phone_android_rounded, color: AppColors.greyicon,
                        // AssetImage(Images.phoneicon),
                        // size: 25,
                      ),
                    ),
                    SizedBox(
                      width: countryCodeValue!.length == 2 ? 60 : 105,
                      child: CountryCodePicker(
                        textStyle: const TextStyle(
                            color: AppColors.greyText, fontSize: 14),
                        onChanged: _onCountryChange,
                        textOverflow: TextOverflow.visible,
                        initialSelection: initialSelection,

                        showDropDownButton: true,
                        // favorite: const ['+1', 'US'],
                        // closeIcon: const Icon(
                        //   Icons.close,
                        //   color: AppColors.greyText,
                        //   size: 25,
                        // ),
                        searchDecoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          hintText: "Search Country Code",
                          filled: true,
                          fillColor: AppColors.white,
                          counterText: "",
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            color: AppColors.greyText,
                            size: 20,
                          ),
                          border: Common.enabledFocusedBorder,
                          focusedBorder: Common.enabledFocusedBorder,
                          enabledBorder: Common.enabledFocusedBorder,
                        ),
                        dialogTextStyle: const TextStyle(
                            color: AppColors.black, fontSize: 16),
                        padding: const EdgeInsets.only(
                          left: 05,
                        ),
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                        dialogSize: Size(
                          Common.displayWidth(context) * 0.9,
                          Common.displayHeight(context) * 0.8,
                        ),
                        showFlagMain: false,
                        dialogBackgroundColor: AppColors.white,
                        backgroundColor: AppColors.greylight.withOpacity(0.1),
                        barrierColor: AppColors.greylight.withOpacity(0.4),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(color: AppColors.greyText),
                    ),
                  ],
                ),
                suffixIcon: SizedBox(
                    height: 10, width: 10, child: InkWell(onTap: () {})),
                prefixStyle: const TextStyle(color: Colors.white),
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
            height: Common.displayHeight(context) * 0.015,
          ),
          //phone number
          SizedBox(
            width: Common.displayWidth(context) * 0.9,
            child: TextFormField(
              controller: passwordController,
              obscureText: hidden,
              cursorHeight: 20,
              autofocus: false,
              onTap: () {},
              style: TextStyle(color: AppColors.black),
              // controller: Controller,
              decoration: InputDecoration(
                fillColor: AppColors.greytextfield,
                filled: true,
                hintText: Constants.password,
                prefixIcon: const Icon(
                  Icons.lock_open_outlined,
                  color: AppColors.greyicon,
                ),
                suffixIcon: SizedBox(
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
                prefixStyle: const TextStyle(color: Colors.white),
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
            height: Common.displayHeight(context) * 0.015,
          ),
          SizedBox(
            width: Common.displayWidth(context) * 0.9,
            child: TextFormField(
              controller: cnfrmpasswordController,
              obscureText: hidden2,
              cursorHeight: 20,
              autofocus: false,
              onTap: () {},
              style: TextStyle(color: AppColors.black),
              // controller: Controller,
              decoration: InputDecoration(
                fillColor: AppColors.greytextfield,
                filled: true,
                hintText: Constants.reenterpassword,
                prefixIcon: const Icon(
                  Icons.lock_open_outlined,
                  color: AppColors.greyicon,
                ),
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
                prefixStyle: const TextStyle(color: Colors.white),
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
            height: Common.displayHeight(context) * 0.015,
          ),
          //location
          SizedBox(
            width: Common.displayWidth(context) * 0.9,
            child: TextFormField(
              controller: emailController,
              cursorHeight: 20,
              autofocus: false,
              onTap: () {},
              style: TextStyle(color: AppColors.black),
              // controller: Controller,
              decoration: InputDecoration(
                fillColor: AppColors.greytextfield,
                filled: true,
                hintText: Constants.enterlocation,
                prefixIcon: const Icon(
                  Icons.location_on_outlined,
                  color: AppColors.greyicon,
                ),
                suffixIcon: SizedBox(
                    height: 10, width: 10, child: InkWell(onTap: () {})),
                prefixStyle: const TextStyle(color: Colors.white),
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
            height: Common.displayHeight(context) * 0.015,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: Common.customRadioButton(Constants.iAgree),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/PrivacyPolicyScreen");
                },
                child: Common.privterm(
                    Constants.privacyTxt, TextDecoration.underline),
              ),
              Text(
                " Or",
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/TermConditionScreen");
                },
                child: Common.privterm(
                    Constants.termcondition, TextDecoration.underline),
              )
            ],
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.03,
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
            height: Common.displayHeight(context) * 0.01,
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.013,
          ),
          Common.customElevatedButton(context, Constants.signupCap, () {
            // Navigator.pushNamed(context, "/Verfication");
            buildSignup();
          }, AppColors.greenchat),
          SizedBox(
            height: Common.displayHeight(context) * 0.03,
          ),
        ],
      ),
    );
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

  void _onCountryChange(CountryCode countryCode) {
    Common.removeFocus(context);
    countryCodeValue = countryCode.toString();
    countryCodeName = countryCode.code;
    setState(() {});
  }
}
