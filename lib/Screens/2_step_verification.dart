import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class Verfication extends StatefulWidget {
  const Verfication({super.key});

  @override
  State<Verfication> createState() => _VerficationState();
}

class _VerficationState extends State<Verfication> {
  final pinController = TextEditingController();
  String otpvalue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(
          top: Common.displayHeight(context) * 0.15,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: Ma,
            children: [
              const Text(
                Constants.StepVerification,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.greenchat,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "basicsanssf"),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              const Text(
                Constants.StepVerificationdes,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 15,

                    // fontWeight: FontWeight.bold,
                    fontFamily: "basicsanssf"),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.16,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Pinput(
                    length: 6,
                    closeKeyboardWhenCompleted: true,
                    keyboardType: TextInputType.number,
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(RegExp("^[0-9][1-9]"))
                    // ],
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(234, 239, 243, 1)),
                        color: AppColors.greytextfield,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    controller: pinController,
                    showCursor: true,
                    cursor: const Text(
                      '-',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // onChanged: (pin) {
                    //   otpvalue = pin;
                    //   if (otpvalue.isEmpty) {
                    //     setState(() {
                    //       pinController.setText('');
                    //     });
                    //   }
                    // },
                    onCompleted: (pin) {
                      otpvalue = pin;
                      pin = '';
                    },
                  )),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Text(
                "00:26",
                style: TextStyle(color: AppColors.bluelink),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.24,
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
                    style: TextStyle(color: AppColors.greyText),
                  ),
                ],
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Common.customElevatedButton(context, Constants.continuee, () {
                Navigator.pushNamed(context, '/ForgotPassword');
              }, AppColors.greenchat),
            ],
          ),
        ),
      ),
    );
  }
}
