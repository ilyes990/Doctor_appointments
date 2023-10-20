// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/pages/Home/Home.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
          title: Text(
            "Reset Password",
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
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      // T E X T   "Create new password"
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Create new password",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // NEW PASS WORD
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: double.infinity,
                        child: Text(
                          "New Password",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 57, 57, 57),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Textfield(hinttext: "New password"),
                      SizedBox(
                        height: 30,
                      ),
                      // CONFIRM NEW PASSWORD

                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: double.infinity,
                        child: Text(
                          "Confirm New Password",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 57, 57, 57),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Textfield(
                        hinttext: "Confirm password",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      showProgressIndicator(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primarycolor,
                        side: BorderSide(
                          width: 1.0,
                          color: primarycolor,
                        )),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            )),
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
        builder: (context) => Home(), // Replace with your destination page
      ));
    });
  }

  Container Textfield({required String hinttext}) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(40), boxShadow: [
        BoxShadow(
          color: Color.fromARGB(15, 4, 4, 176),
          offset: const Offset(0, 20),
          blurRadius: 40,
        ),
      ]),
      child: TextField(
        obscureText: passwordVisible,
        style: TextStyle(color: Color.fromARGB(212, 0, 0, 0)),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Color.fromARGB(255, 138, 138, 138),
            ),
            onPressed: () {
              setState(
                () {
                  passwordVisible = !passwordVisible;
                },
              );
            },
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 248, 248, 248),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                width: 1,
                color: Color.fromARGB(255, 200, 199, 199),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: primarycolor,
                width: 2,
              )),
          hintText: hinttext,
          hintStyle: TextStyle(color: Color.fromARGB(196, 192, 192, 192)),
        ),
      ),
    );
  }
}
