import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';
import 'SignUp_Screen.dart';
import 'login_Screen.dart';

// ignore: camel_case_types
class LogSignUp extends StatefulWidget {
  const LogSignUp({super.key});

  @override
  State<LogSignUp> createState() => _LogSignUpState();
}

// ignore: camel_case_types
class _LogSignUpState extends State<LogSignUp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Common.displayHeight(context) * 0.07,
                ),
                Image.asset(Images.logo),
                SizedBox(
                  height: Common.displayHeight(context) * 0.07,
                ),
                Container(
                  height: Common.displayHeight(context) * 0.65,
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Common.displayHeight(context) * 0.11,
                          ),
                          child: TabBar(
                            labelPadding: EdgeInsets.only(
                              bottom: Common.displayHeight(context) * 0.01,
                            ),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: AppColors.black,
                            unselectedLabelColor: AppColors.black,
                            onTap: (val) {
                              FocusScope.of(context).requestFocus(FocusNode());
                            },
                            // ignore: prefer_const_literals_to_create_immutables
                            tabs: [
                              const Text(
                                Constants.loginCap,
                                style: TextStyle(
                                    color: AppColors.black, fontSize: 18),
                              ),
                              // style: Theme.of(context).textTheme.headline1),
                              const Text(
                                Constants.signupCap,
                                style: TextStyle(
                                    color: AppColors.black, fontSize: 18),
                                // Theme.of(context).textTheme.headline1)
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: TabBarView(
                            children: <Widget>[
                              Login_Screen(),
                              SignUp_Screen(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
