import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/theme.dart';

class ProfileStdResult extends StatefulWidget {
  const ProfileStdResult({super.key});

  @override
  State<ProfileStdResult> createState() => _ProfileStdResultState();
}

class _ProfileStdResultState extends State<ProfileStdResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "STD RESULTS",
          style: TextStyle(
              color: AppColors.greenchat,
              fontFamily: FontFamily.futuram,
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Center(
                child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/ProfileStdVerification");
              },
              child: Icon(
                Icons.add,
                color: AppColors.greyText,
                size: 28,
              ),
            )),
          ),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Consumer<FindFriendsPov>(builder: (context, items, child) {
          // return
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Material(
                    elevation: 24,
                    child: Container(
                      color: AppColors.white,
                      width: Common.displayWidth(context),
                      height: Common.displayHeight(context) * 0.13,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/UploadReport");
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                  foregroundColor:
                                      Color.fromRGBO(0, 172, 155, 1),
                                  radius: 8,
                                  backgroundColor:
                                      Color.fromRGBO(100, 170, 154, 1)),
                              const SizedBox(
                                width: 10,
                              ),
                              const CircleAvatar(
                                radius: 8,
                                backgroundColor:
                                    Color.fromRGBO(40, 172, 155, 1),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const CircleAvatar(
                                radius: 9,
                                backgroundColor: Color.fromRGBO(0, 172, 155, 1),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Chlamydia',
                                style: TextStyle(
                                    fontSize: 21,
                                    fontFamily: FontFamily.futuram,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black),
                              ),
                              SizedBox(
                                width: Common.displayWidth(context) * 0.14,
                              ),
                              Text(
                                "11/01/2021",
                                style: TextStyle(color: AppColors.greyDivider),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
            // );
            // }
          ),
        ],
      ),
    );
  }
}
