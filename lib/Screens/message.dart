import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        toolbarHeight: Common.displayHeight(context) * 0.1,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        titleSpacing: Common.displayWidth(context) * 0.07,
        // leading:
        title: Image.asset(
          Images.maskgroup,
          scale: 2.5,
        ),
        actions: [
          Image.asset(Images.searchicon, scale: 3),
          // SizedBox(
          //   width: Common.displayWidth(context) * 0.02,
          // ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: Common.displayHeight(context) * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Common.displayWidth(context) * 0.2,
                height: 1.9,
                color: AppColors.greenuserprofile,
              ),
              const Text(
                Constants.messageburrow,
                style: TextStyle(
                    fontSize: 24,
                    // fontFamily: FontFamily.futuram,
                    color: AppColors.greenuserprofile,
                    fontWeight: FontWeight.w500
                    // fontWeight: FontWeight.w100
                    ),
              ),
              Container(
                width: Common.displayWidth(context) * 0.2,
                height: 1.9,
                color: AppColors.greenuserprofile,
              )
            ],
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.04,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Center(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/InsideChatScreen");
                          },
                          child: ListTile(
                            leading: Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        Images.girl1,
                                      ),
                                    ))),
                            title: Row(
                              children: [
                                const Text(
                                  "Persons Name",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: FontFamily.futuram),
                                ),
                                SizedBox(
                                  width: Common.displayWidth(context) * 0.02,
                                ),
                                const Icon(
                                  Icons.cloud_done_rounded,
                                  color: AppColors.greenuserprofile,
                                )
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                Container(
                                  height: Common.displayHeight(context) * 0.03,
                                  width: Common.displayWidth(context) * 0.2,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: Common.displayWidth(context) *
                                              0.02,
                                        ),
                                        const CircleAvatar(
                                          foregroundColor:
                                              Color.fromRGBO(0, 172, 155, 1),
                                          radius: 4,
                                          backgroundColor: Color.fromARGB(
                                              255, 244, 246, 179),
                                        ),
                                        SizedBox(
                                          width: Common.displayWidth(context) *
                                              0.008,
                                        ),
                                        const CircleAvatar(
                                          foregroundColor:
                                              Color.fromRGBO(0, 172, 155, 1),
                                          radius: 4,
                                          backgroundColor: Color.fromARGB(
                                              255, 240, 242, 149),
                                        ),
                                        SizedBox(
                                          width: Common.displayWidth(context) *
                                              0.008,
                                        ),
                                        const CircleAvatar(
                                          foregroundColor:
                                              Color.fromRGBO(0, 172, 155, 1),
                                          radius: 4,
                                          backgroundColor:
                                              Color.fromARGB(255, 238, 241, 54),
                                        ),
                                        SizedBox(
                                          width: Common.displayWidth(context) *
                                              0.02,
                                        ),
                                        const Text(
                                          'STD',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Common.displayWidth(context) * 0.01,
                                ),
                                Container(
                                  height: Common.displayHeight(context) * 0.03,
                                  width: Common.displayWidth(context) * 0.33,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: Common.displayWidth(context) *
                                              0.02,
                                        ),
                                        const CircleAvatar(
                                          foregroundColor:
                                              Color.fromRGBO(0, 172, 155, 1),
                                          radius: 4,
                                          backgroundColor: Color.fromARGB(
                                              255, 179, 246, 237),
                                        ),
                                        SizedBox(
                                          width: Common.displayWidth(context) *
                                              0.008,
                                        ),
                                        const CircleAvatar(
                                          foregroundColor:
                                              Color.fromRGBO(0, 172, 155, 1),
                                          radius: 4,
                                          backgroundColor: Color.fromARGB(
                                              255, 153, 244, 232),
                                        ),
                                        SizedBox(
                                          width: Common.displayWidth(context) *
                                              0.008,
                                        ),
                                        const CircleAvatar(
                                          foregroundColor:
                                              Color.fromRGBO(0, 172, 155, 1),
                                          radius: 4,
                                          backgroundColor:
                                              Color.fromARGB(255, 90, 251, 230),
                                        ),
                                        SizedBox(
                                          width: Common.displayWidth(context) *
                                              0.02,
                                        ),
                                        const Text(
                                          'COVID VACCINE',
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 21,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Common.displayHeight(context) * 0.02,
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  // Class _customcircel{
  //   return
  // }

}
