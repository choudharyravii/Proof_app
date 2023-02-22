import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class NotificationProfile extends StatefulWidget {
  const NotificationProfile({super.key});

  @override
  State<NotificationProfile> createState() => _NotificationProfileState();
}

class _NotificationProfileState extends State<NotificationProfile> {
  @override
  Widget build(BuildContext context) {
    var switchValue = true;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: Common.displayHeight(context) * 0.1,
        backgroundColor: AppColors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          Constants.notification,
          style: TextStyle(
              color: AppColors.greenchat,
              fontWeight: FontWeight.w600,
              fontSize: 22),
        ),
        actions: [
          Transform.scale(
            scale: 0.70,
            child: CupertinoSwitch(
              // This bool value toggles the switch.
              value: switchValue,
              activeColor: const Color.fromRGBO(0, 172, 155, 1),
              onChanged: (bool? value) {
                // This is called when the user toggles the switch.
                setState(() {
                  switchValue = value ?? false;
                });
              },
            ),
          ),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Material(
                    elevation: 24,
                    child: Container(
                      color: AppColors.white,
                      width: Common.displayWidth(context),
                      height: Common.displayHeight(context) * 0.10,
                      child: Column(
                        children: [
                          SizedBox(
                            height: Common.displayHeight(context) * 0.02,
                          ),
                          ListTile(
                            title: const Text(
                              Constants.profilename,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            subtitle: const Text(
                              Constants.smallLoremIpsum,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            trailing: Column(
                              children: [
                                const Text(
                                  "3m",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                const Icon(
                                  Icons.delete_sweep,
                                  color: AppColors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            // );
            // }
          ),
          const SizedBox(
            height: 10,
          ),
          Common.customElevatedButton(
              context, "DELETE ALL", () {}, AppColors.greenchat),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
