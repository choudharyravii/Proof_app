import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class InterrestedIn extends StatefulWidget {
  const InterrestedIn({super.key});

  @override
  State<InterrestedIn> createState() => _InterrestedInState();
}

class _InterrestedInState extends State<InterrestedIn> {
  final emailController = TextEditingController();
  var otpvalue;
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: Navigator.of(context).pop,
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(
                          Icons.arrow_back,
                          color: AppColors.black,
                        ),
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
                    Constants.wareinter,
                    style: TextStyle(
                        color: AppColors.greenchat,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.futuraPT,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.02,
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.8,
                    child: const Center(
                      child: Text(
                        "Enter email associated with your account",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: "basicsanssf"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.05,
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.6,
                    width: Common.displayWidth(context) * 0.9,
                    child: GridView.builder(
                      itemCount: 22,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          // semanticContainer: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(
                              color: Color.fromARGB(255, 186, 184, 184),
                              // width: 2,
                            ),
                          ),
                          elevation: 1,
                          child: const Center(
                            child: Text(
                              Constants.activityname,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight
                                      .w600), //just for testing, will fill with image later
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.04,
                  ),
                  Common.customElevatedButton(context, Constants.continuee, () {
                    // buildSignup();
                    Navigator.pushNamed(context, "/StdResultList");
                  }, AppColors.greenchat),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
