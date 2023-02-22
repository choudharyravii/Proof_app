import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'POST',
          style: TextStyle(
              fontSize: 22,
              color: AppColors.greenchat,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(229, 229, 229, 1),
                ),
                height: Common.displayHeight(context) * 0.40,
                width: Common.displayWidth(context) * 0.70,
                child: Image.asset(
                  Images.addimg,
                  scale: 3,
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    color: AppColors.greenchat,
                    size: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Add Image or video',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 172, 155, 1)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        maxLength: 50, cursorColor: Colors.black,
                        // obscureText: hidden2,
                        cursorHeight: 20, maxLines: 3,
                        autofocus: false,
                        onTap: () {},
                        style: const TextStyle(color: Colors.black),
                        // controller: Controller,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(229, 229, 229, 1))),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(229, 229, 229, 1))),
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          filled: true,
                          hintText: 'Type Caption',
                          counterText: '',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 22, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    width: Common.displayWidth(context) * 0.85,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Save to Device',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: Common.displayWidth(context) * 0.40,
                        // ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                              value: switchValue,
                              activeColor: AppColors.greenchat,
                              onChanged: (bool? value) {
                                setState(() {
                                  switchValue = value ?? false;
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.04,
              ),
              Common.customElevatedButton(
                  context, "Post Now", () {}, AppColors.greenchat),
              SizedBox(
                height: Common.displayHeight(context) * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
