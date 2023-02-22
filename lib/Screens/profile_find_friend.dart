import "package:flutter/material.dart";
import 'package:proof/Provider/find_frinds_pov.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';
import 'package:provider/provider.dart';

class ProfileFindFriends extends StatefulWidget {
  const ProfileFindFriends({super.key});

  @override
  State<ProfileFindFriends> createState() => _ProfileFindFriendsState();
}

class _ProfileFindFriendsState extends State<ProfileFindFriends> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: Common.displayHeight(context) * 0.1,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          "FRIENDS",
          style: TextStyle(
              fontSize: 22,
              color: AppColors.greenchat,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: Common.displayHeight(context) * 0.04,
          ),
          const Text(
            Constants.friendrequest,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
              // fontWeight: FontWeight.w100
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/Add_Friend");
            },
            child: ListTile(
              leading: Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          Images.ramg,
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
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.13,
                  ),
                  const Text(
                    "Accept",
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.green,
                        fontWeight: FontWeight.bold),
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
                            width: Common.displayWidth(context) * 0.02,
                          ),
                          const CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromARGB(255, 244, 246, 179),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.008,
                          ),
                          const CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromARGB(255, 240, 242, 149),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.008,
                          ),
                          const CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromARGB(255, 238, 241, 54),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.02,
                          ),
                          const Text(
                            'STD',
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.02,
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
                            width: Common.displayWidth(context) * 0.02,
                          ),
                          const CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromARGB(255, 179, 246, 237),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.008,
                          ),
                          const CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromARGB(255, 153, 244, 232),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.008,
                          ),
                          const CircleAvatar(
                            foregroundColor: Color.fromRGBO(0, 172, 155, 1),
                            radius: 4,
                            backgroundColor: Color.fromARGB(255, 90, 251, 230),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.02,
                          ),
                          const Text(
                            'COVID VACCINE',
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.034,
                  ),
                  const Center(
                    child: Text(
                      "Deny",
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.03,
          ),
          const Text(
            Constants.friends,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
              // fontWeight: FontWeight.w100
            ),
          ),
          SizedBox(
            height: Common.displayHeight(context) * 0.03,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Center(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Add_Friend");
                          },
                          child: ListTile(
                            leading: Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        Images.luci,
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
                                  width: Common.displayWidth(context) * 0.001,
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
                                SizedBox(
                                  width: Common.displayWidth(context) * 0.02,
                                ),
                                SizedBox(
                                  width: Common.displayWidth(context) * 0.12,
                                  child: const Text(
                                    "Remove Friend",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.orangeLikedCarrot),
                                  ),
                                )
                              ],
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
}
