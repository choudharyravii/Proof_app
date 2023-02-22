import "package:flutter/material.dart";
import 'package:proof/Provider/find_frinds_pov.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';
import 'package:provider/provider.dart';

class FindFriends extends StatefulWidget {
  const FindFriends({super.key});

  @override
  State<FindFriends> createState() => _FindFriendsState();
}

class _FindFriendsState extends State<FindFriends> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        // centerTitle: true,
        // leadingWidth: 50,
        // ignore: prefer_const_constructors
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.arrow_back,
              color: AppColors.black,
              size: 30,
            ),
          ),
        ),
        backgroundColor: AppColors.white,
        elevation: 5,
        title: Row(
          children: [
            SizedBox(
                height: 50,
                child: Image.asset(
                  Images.maskgroup,
                )),
            SizedBox(
              width: Common.displayWidth(context) * 0.18,
            ),
            Image.asset(
              Images.searchicon,
              scale: 3,
            ),
            SizedBox(
              width: Common.displayWidth(context) * 0.04,
            ),
            Image.asset(
              Images.share,
              scale: 3,
            ),
          ],
        ),
      ),
      body: Container(
        width: Common.displayWidth(context),
        height: Common.displayHeight(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Common.displayHeight(context) * 0.03,
            ),
            SizedBox(
                width: Common.displayWidth(context) * 0.4,
                child: Text(
                  Constants.findfriends,
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.greenchat,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(
              height: Common.displayHeight(context) * 0.02,
            ),
            Consumer<FindFriendsPov>(builder: (context, items, child) {
              return Expanded(
                child: ListView.builder(
                    itemCount: items.myList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/InsideChatScreen");
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                              radius: 24,
                              backgroundColor: AppColors.green,
                              child: ClipOval(
                                child: SizedBox(
                                  height: 50,
                                  child: Image.asset(
                                    items.myList[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                          title: Text(
                            items.myList[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(items.myList[index].tags),
                          trailing: Checkbox(
                            activeColor: AppColors.greenchat,
                            value: this.value,
                            onChanged: (value) async {
                              setState(() {
                                this.value = value!;
                              });
                            },
                          ), //
                        ),
                      );
                    }),
              );
            }),
            Common.customElevatedButton(context, Constants.continuee, () {
              Navigator.pushNamed(context, "/InterrestedIn");
            }, AppColors.greenchat),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
