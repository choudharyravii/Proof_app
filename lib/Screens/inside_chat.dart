import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class InsideChatScreen extends StatefulWidget {
  const InsideChatScreen({super.key});

  @override
  State<InsideChatScreen> createState() => _InsideChatScreenState();
}

class _InsideChatScreenState extends State<InsideChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          titleSpacing: 1,
          toolbarHeight: Common.displayHeight(context) * 0.09,
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.black,
              )),
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              Container(
                  width: Common.displayWidth(context) * 0.11,
                  height: Common.displayHeight(context) * 0.5,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          Images.ramg,
                        ),
                      ))),
              SizedBox(
                width: Common.displayWidth(context) * 0.04,
              ),
              const Text(
                "Persons Name",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black),
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.02,
              ),
              const Icon(
                Icons.cloud_done_rounded,
                color: AppColors.greenReview,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.09,
              ),
            ],
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Center(
              child: Text(
                "Map",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.greenuserprofile),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.location_on,
                color: AppColors.greenuserprofile,
              ),
            ),
          ],
          flexibleSpace: Container(),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child:
                        // Consumer<InsideChats>(builder: (context, items, child) {
                        ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Common.displayHeight(context) * 0.05,
                            ),
                            Container(
                              width: 100,
                              height: 29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.greenchat,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Hello Budddy",
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 12),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 62),
                              child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Text(
                                  "7:02 PM",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ))),
            Container(
              height: Common.displayHeight(context) * 0.1,
              width: Common.displayWidth(context) * 1,
              color: AppColors.greytextfield,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.add_circle_outline,
                      color: AppColors.greyDivider,
                      size: 28,
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.04,
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.65,
                      height: Common.displayHeight(context) * 0.05,
                      child: TextFormField(
                        cursorHeight: 10,
                        autofocus: false,
                        onTap: () {},
                        style: const TextStyle(color: AppColors.black),
                        // controller: Controller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Type message here..",
                          hintStyle: const TextStyle(fontSize: 10),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.04,
                    ),
                    const Icon(
                      Icons.screen_share,
                      color: AppColors.greyDivider,
                      size: 28,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
