// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/pages/Home/Home.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            "Profile Details",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Transform.scale(
            scale: 1.2,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                "assets/arrow back.png",
              ),
              color: primarycolor,
            ),
          )),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // U P L O A D  P H O T O

                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/Uploadphoto.png"),
                ),

                SizedBox(
                  height: 18,
                ),
                // F U L L    N A M E
                TitleTextfield(text: 'Full name'),
                SizedBox(
                  height: 8,
                ),
                Textfield(
                  hinttext: 'Full name',
                ),
                SizedBox(
                  height: 16,
                ),
                // E M A I L
                TitleTextfield(text: 'Email'),
                SizedBox(
                  height: 8,
                ),
                Textfield(
                  hinttext: 'Email',
                ),
                SizedBox(
                  height: 16,
                ),
                // G E N D E R
                TitleTextfield(text: 'Gender'),
                SizedBox(
                  height: 8,
                ),
                Textfield(
                  hinttext: 'Gender',
                ),
                SizedBox(
                  height: 16,
                ),
                // D A T E   O F  B I R T H
                TitleTextfield(text: 'Date of birth'),
                SizedBox(
                  height: 8,
                ),
                Textfield(
                  hinttext: 'DD/MM/YYYY',
                ),
                SizedBox(
                  height: 16,
                ),
                //  A D R E S S
                TitleTextfield(text: 'Adress'),
                SizedBox(
                  height: 8,
                ),
                Textfield(
                  hinttext: 'Adress',
                ),
                SizedBox(
                  height: 35,
                ),
                // N E X T
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
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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

  Container TitleTextfield({required String text}) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: const Color.fromARGB(255, 57, 57, 57),
            fontSize: 14,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  Container Textfield({required String hinttext}) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(40), boxShadow: [
        BoxShadow(
          color: Color.fromARGB(22, 4, 4, 176),
          offset: const Offset(0, 20),
          blurRadius: 30,
        ),
      ]),
      child: TextField(
        style: TextStyle(color: Color.fromARGB(212, 0, 0, 0)),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
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
