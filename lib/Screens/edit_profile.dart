import 'package:flutter/material.dart';
import 'package:proof/Utilis/common.dart';
import 'package:proof/Utilis/contants.dart';
import 'package:proof/Utilis/theme.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
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
          Constants.capeditprofile,
          style: TextStyle(
              color: AppColors.greenchat,
              fontWeight: FontWeight.w600,
              fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: _mediaQuery.size.width * 0.01,
                  right: _mediaQuery.size.width * 0.01,
                  top: _mediaQuery.size.height * 0.01,
                  bottom: _mediaQuery.size.height * 0.01),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage(Images.girl1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Image.asset(
                          Images.editicon,
                          scale: 3,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: const Text(
                        'albrt@gmail.com',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: _mediaQuery.size.width * 0.9,
                    child: TextFormField(
                      validator: (val) {},
                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: AppColors.whitelig)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.whitelig)),
                        fillColor: AppColors.greytextfield,
                        filled: true,
                        hintText: 'Person Name',
                        prefixStyle: const TextStyle(color: Colors.white),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 22, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: _mediaQuery.size.width * 0.9,
                    child: TextFormField(
                      validator: (val) {},
                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(229, 229, 229, 1))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(229, 229, 229, 1))),
                        fillColor: AppColors.greytextfield,
                        filled: true,
                        hintText: 'Mobile Number',
                        prefixStyle: const TextStyle(color: Colors.white),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 22, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: _mediaQuery.size.width * 0.9,
                    child: TextFormField(
                      validator: (val) {},
                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(229, 229, 229, 1))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(229, 229, 229, 1))),
                        fillColor: AppColors.greytextfield,
                        filled: true,
                        hintText: 'Location',
                        // prefixIcon: Image(image: AssetImage('assets/padlock.png')),
                        suffixIcon: const Icon(Icons.my_location_outlined),
                        prefixStyle: const TextStyle(color: Colors.white),

                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 22, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: _mediaQuery.size.width * 0.9,
                    child: TextFormField(
                      maxLines: 8,
                      // controller: passwordController,
                      // obscureText: hidden2,
                      validator: (val) {},
                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(229, 229, 229, 1))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(229, 229, 229, 1))),
                        fillColor: AppColors.greytextfield,
                        filled: true,
                        hintText:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                        prefixStyle: const TextStyle(color: Colors.white),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 22, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Common.customElevatedButton(
                      context, Constants.save, () {}, AppColors.greenchat)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
