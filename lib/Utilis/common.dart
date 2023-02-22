import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class Common {
  static double displayHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double displayWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static OutlineInputBorder commonOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(80),
  );

  static OutlineInputBorder commonOutlineInputBorder2 = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(15),
  );
  //* Textfield borders

  static OutlineInputBorder enabledFocusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.greylight),
    borderRadius: BorderRadius.circular(10),
  );

  static OutlineInputBorder focusErrorBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.red, width: 1),
    borderRadius: BorderRadius.circular(10),
  );

  static OutlineInputBorder errorBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.greylight, width: 0.0),
  );

  static OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular((7.0)),
    borderSide: const BorderSide(color: AppColors.boxGreyColor),
  );

  static customRadioButton(String title) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(color: AppColors.bluelink, width: 2),
          ),
          child: Transform.scale(
            scale: 0.6,
            child: Checkbox(
              checkColor: AppColors.bluelink,
              activeColor: AppColors.bluelink,
              // fillColor: ,
              // fillColor: MaterialStateProperty.resolveWith(getColor),
              shape: const CircleBorder(
                side: BorderSide(),
              ),
              // side: BorderSide(width: 5),
              // value: isChecked,
              onChanged: (bool? value) {
                // setState(() {
                //   isChecked = value!;
                // });
              },
              value: true,
            ),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  static privterm(String text, TextDecoration underlines) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        decoration: underlines,
        fontSize: 14,
        color: AppColors.bluelink,
      ),
    );
  }

  static customElevatedButton(
      BuildContext context, String text, VoidCallback onPressed, Color color) {
    return Container(
      height: Common.displayHeight(context) * 0.075,
      width: Common.displayWidth(context) * 0.9,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: FontFamily.gillSans,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        onPressed: onPressed,
      ),
    );
  }

  static customElevatedButton3(
      BuildContext context, String text, VoidCallback onPressed, Color color) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: Common.displayWidth(context) * 0.050,
            fontFamily: 'Proxima Nova Black',
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  static customElevatedButton4(
      BuildContext context, String text, VoidCallback onPressed, Color color) {
    return Container(
      height: Common.displayHeight(context) * 0.08,
      width: Common.displayWidth(context) * 1,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline5,
        ),
        onPressed: onPressed,
      ),
    );
  }

  static customsmallbutton(
      BuildContext context, String text, VoidCallback onPressed, Color color) {
    return Container(
      width: Common.displayWidth(context) * 0.38,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: Common.displayWidth(context) * 0.035,
            // fontFamily: Constants.fontbasic,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  static customsmallbutton2(BuildContext context, String text,
      VoidCallback onPressed, Color color, Color textcolor) {
    return Container(
        width: Common.displayWidth(context) * 0.34,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontWeight: FontWeight.bold,
              fontSize: Common.displayWidth(context) * 0.035,
              fontFamily: 'Proxima Nova Black',
            ),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              side: const BorderSide(width: 1.0, color: AppColors.white)),
        ));
  }

  static customsmallbutton3(
      BuildContext context,
      String text,
      VoidCallback onPressed,
      Color color,
      Color textcolor,
      double lt,
      double rt,
      double rb,
      double lb) {
    return Container(
        width: Common.displayWidth(context) * 0.44,
        height: Common.displayHeight(context) * 0.07,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                color: textcolor,
                fontWeight: FontWeight.bold,
                fontSize: Common.displayWidth(context) * 0.035,
                fontFamily: 'Proxima Nova Black',
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(lt),
                  bottomLeft: Radius.circular(lb),
                  topRight: Radius.circular(rt),
                  bottomRight: Radius.circular(rb),
                ),
              ),
            )));
  }

  static customsmallbutton4(
      BuildContext context,
      String text,
      VoidCallback onPressed,
      Color color,
      Color textcolor,
      double wdth,
      double hight) {
    return Container(
        width: Common.displayWidth(context) * wdth,
        height: Common.displayHeight(context) * hight,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: textcolor,
                fontWeight: FontWeight.bold,
                fontSize: Common.displayWidth(context) * 0.035,
                fontFamily: 'Proxima Nova Black',
              ),
            )));
  }

  static showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  //Show loading dialog
  static showLoading(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Dialog(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.70,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                        height: 40.0,
                        // width: 40.0,
                        child:
                            //Platform.isIOS
                            // ?
                            CupertinoActivityIndicator(
                          radius: 10,
                          // color: AppColors.yellowButton,
                          animating: true,
                        )
                        // :
                        // commonLoader(context),
                        ),
                    Container(
                        padding: const EdgeInsets.all(10.0),
                        child: const Text(
                          'Please Wait...',
                          style: TextStyle(
                              // color: AppColors.yellowButton, fontSize: 16.0),
                              ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  //Hide loading dialog
  static hideLoading(BuildContext context) {
    Navigator.of(context).pop();
  }

  static openCustomDialog(
      BuildContext context, String title, String message, VoidCallback func) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: Platform.isIOS
                  ? CupertinoAlertDialog(
                      title: Center(
                        child: Text(title,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold)),
                      ),
                      content: Text(message),
                      actions: <Widget>[
                        TextButton(
                          // ignore: sort_child_properties_last
                          child: const Text(
                            'Ok',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              // color: AppColors.yellowButton,
                            ),
                          ),
                          onPressed: func,
                        ),
                      ],
                    )
                  : AlertDialog(
                      title: Center(
                        child: Text(title,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold)),
                      ),
                      content: Text(message),
                      actions: <Widget>[
                        TextButton(
                          // ignore: sort_child_properties_last
                          child: const Text(
                            'Ok',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              // color: AppColors.yellowButton,
                            ),
                          ),
                          onPressed: func,
                        ),
                      ],
                    ),
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
        barrierDismissible: false,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return const Text("");
        });
  }

  static askToUserPopup(BuildContext context, String button1, String button2,
      bool towButtons, Widget subtitleWidget, dynamic func1, dynamic func2) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: Platform.isIOS
                  ? CupertinoAlertDialog(
                      content: subtitleWidget,
                      actions: towButtons
                          ? [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    // width: displayWidth(context) * 0.35,
                                    // height: displayHeight(context) * 0.06,
                                    child: commonBlackButton(
                                        func1, button1, context)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  // width: displayWidth(context) * 0.35,
                                  // height: displayHeight(context) * 0.06,
                                  child: commonButton(func2, button2, context),
                                ),
                              ),
                            ]
                          : [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                width: displayWidth(context) * 0.35,
                                height: displayHeight(context) * 0.06,
                                child: commonButton(func2, button2, context),
                              ),
                            ],
                    )
                  : AlertDialog(
                      // title: title==""?Text(title,
                      //   style: const TextStyle(
                      //     color: AppColors.blackButtonColor,
                      //     fontWeight: FontWeight.w700,),):const SizedBox(),
                      content: subtitleWidget,
                      actionsAlignment: MainAxisAlignment.center,
                      actions: towButtons
                          ? [
                              SizedBox(
                                  width: displayWidth(context) * 0.35,
                                  height: displayHeight(context) * 0.06,
                                  child: commonBlackButton(
                                      func1, button1, context)),
                              SizedBox(
                                  width: displayWidth(context) * 0.35,
                                  height: displayHeight(context) * 0.06,
                                  child: commonButton(func2, button2, context)),
                            ]
                          : [
                              SizedBox(
                                  width: displayWidth(context) * 0.40,
                                  height: displayHeight(context) * 0.06,
                                  child: commonButton(func2, button2, context)),
                            ],
                    ),
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
        barrierDismissible: false,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return const Text("");
        });
  }

  static Widget commonButton(VoidCallback func, String button, context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: ElevatedButton(
        style: const ButtonStyle(
            // backgroundColor: MaterialStateProperty.all(
            //   AppColors.yellowButton
            //   ),
            ),
        onPressed: func,
        child: Text(
          button,
          style: TextStyle(fontSize: Common.displayWidth(context) * 0.03),
        ),
      ),
    );
  }

  static Widget commonBlackButton(VoidCallback func, String button, context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: ElevatedButton(
        style: const ButtonStyle(
            // backgroundColor: MaterialStateProperty.all(AppColors.yellowButton),
            ),
        onPressed: func,
        child: Text(
          button,
          style: TextStyle(fontSize: Common.displayWidth(context) * 0.03),
        ),
      ),
    );
  }

  // To remove focus
  static removeFocus(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    //hasPrimaryFocus is necessary to prevent Flutter from
    // throwing an exception when trying to un focus the node at the top of the tree
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  /// Comment
  /// Comment
  /// comment
}
