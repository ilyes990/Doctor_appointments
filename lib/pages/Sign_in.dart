// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/pages/Forgotpassword/Forgetpassword.dart';
import 'package:doctor_mgmt_system/pages/Home/Home.dart';
import 'package:doctor_mgmt_system/pages/Signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.06,
              ),
              //    L O G O
              SizedBox(
                  height: 75, child: Image.asset("assets/Vector_blue.png")),
              SizedBox(
                height: screenHeight * 0.06,
              ),
              // S I G N  I N
              Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),

              // E M A I L
              Container(
                margin: EdgeInsets.only(left: 15),
                width: double.infinity,
                child: Text(
                  "Email",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 57, 57, 57),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              //   E M A I L    T E X T F I E L D
              SizedBox(
                height: 50,
                child: TextField(
                  style: TextStyle(color: Color.fromARGB(213, 255, 255, 255)),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 200, 199, 199))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 251, 251, 251))),
                    hintText: "Email",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(196, 192, 192, 192)),
                  ),
                ),
              ),
              // P A S S W O R D
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                width: double.infinity,
                child: Text(
                  "Password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 57, 57, 57),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              //   E M A I L    T E X T F I E L D
              SizedBox(
                height: 50,
                child: TextField(
                  style: TextStyle(color: Color.fromARGB(213, 255, 255, 255)),
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 200, 199, 199))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 251, 251, 251))),
                    hintText: "Password",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(196, 192, 192, 192)),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),

              // S I G N  I N    B U T T O N
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primarycolor,
                      side: BorderSide(
                        width: 1.0,
                        color: primarycolor,
                      )),
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              // F O R G E T   T H E    P A S S W O R D
              Container(
                margin: EdgeInsets.only(left: 15),
                width: double.infinity,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Forgetpassword()));
                  },
                  child: Text(
                    "Forgot The Password ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: primarycolor,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              // O R  C O N T I N U E  W I T H
              Container(
                margin: EdgeInsets.only(left: 15),
                width: double.infinity,
                child: Text(
                  "or continue with",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(200, 38, 38, 38),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              // G O O G L E    O R    F A C E B O O K
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RowButtons(screenWidth,
                      assets: "assets/facebook.png",
                      title: "Facebook",
                      OnTap: () {}),
                  RowButtons(screenWidth,
                      assets: "assets/Google.png",
                      title: "Google",
                      OnTap: () {}),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              // Don't have an account ??
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(color: grey, fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SingUp()));
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                          color: primarycolor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox RowButtons(double screenWidth,
      {required String assets, required String title, required OnTap}) {
    return SizedBox(
      width: screenWidth * 0.4,
      height: 60,
      child: ElevatedButton(
          onPressed: OnTap,
          style: ElevatedButton.styleFrom(
              elevation: 0.0,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.white,
              side: BorderSide(
                width: 1.0,
                color: grey,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(assets),
              SizedBox(
                width: 8,
              ),
              Text(
                title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
