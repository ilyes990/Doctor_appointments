// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/pages/Forgotpassword/FPone.dart';
import 'package:doctor_mgmt_system/pages/Forgotpassword/FPtwo.dart';
import 'package:doctor_mgmt_system/pages/Forgotpassword/ResetPassword.dart';
import 'package:doctor_mgmt_system/pages/Home/Home.dart';
import 'package:flutter/material.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  late PageController controller;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Forgot the password",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          leading: Transform.scale(
            scale: 1.2,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/arrow back.png",
              ),
              color: primarycolor,
            ),
          )),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: PageView(
              controller: controller,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              children: [
                FPone(),
                FPtwo(),
              ],
            ),
          ),

          //      N E X T   B U T T O N

          Expanded(
            flex: 1,
            child: Container(
              color: Color.fromARGB(255, 243, 243, 243),
              margin: EdgeInsets.only(bottom: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  controller.nextPage(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.ease,
                  );
                  if (currentIndex == 1) {
                    showProgressIndicator(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: primarycolor,
                    side: BorderSide(
                      width: 1.0,
                      color: primarycolor,
                    )),
                child: Text(
                  currentIndex == 0 ? "Continue" : "Verify",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showProgressIndicator(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Prevent dismissing the dialog by tapping outside
      builder: (BuildContext context) {
        return Center(
          child: Container(
              padding: EdgeInsets.all(30),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14), color: Colors.white),
              child: CircularProgressIndicator(
                color: Colors.blue,
              )),
        );
      },
    );

    // Set a timer to navigate to another page after approximately 15 seconds
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pop(); // Close the dialog
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) =>
            ResetPassword(), // Replace with your destination page
      ));
    });
  }
}
