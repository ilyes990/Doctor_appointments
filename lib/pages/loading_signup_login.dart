// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/pages/Sign_in.dart';
import 'package:doctor_mgmt_system/pages/Signup.dart';
import 'package:flutter/material.dart';

class Load_sign_log extends StatelessWidget {
  const Load_sign_log({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // L O G O
              SizedBox(
                height: screenHeight * 0.3,
              ),
              SizedBox(child: Image.asset("assets/Vector_blue.png")),
              SizedBox(
                height: 210,
              ),

              // S I G N   U P   B U T T O N

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SingUp()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primarycolor,
                    side: BorderSide(
                      width: 1.5,
                      color: primarycolor,
                    ),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              // S I G N   U P   B U T T O N

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SingIn()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      width: 1.5,
                      color: primarycolor,
                    ),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: primarycolor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
