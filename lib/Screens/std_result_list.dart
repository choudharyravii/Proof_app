import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class StdResultList extends StatefulWidget {
  const StdResultList({super.key});

  @override
  State<StdResultList> createState() => _StdResultListState();
}

class _StdResultListState extends State<StdResultList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "STD Verification",
          style: TextStyle(
              color: AppColors.greenchat,
              fontFamily: FontFamily.futuram,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 28.0),
            child: Center(
              child: Text(
                "SKip",
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontFamily.futuram,
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: SizedBox(
            width: Common.displayWidth(context) * 0.9,
            child: const Text(
              Constants.stddescripiton,
              style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.futuram,
                  fontSize: 15),
            ),
          )),
          // Consumer<FindFriendsPov>(builder: (context, items, child) {
          // return
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: Common.displayWidth(context),
                    height: Common.displayHeight(context) * 0.15,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/UploadReport");
                      },
                      child: Card(
                        elevation: 4.0,
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
