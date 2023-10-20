// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/pages/loading_signup_login.dart';
import 'package:flutter/material.dart';

class Loading_screen_blue extends StatelessWidget {
  const Loading_screen_blue({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      // Navigate to the SignInOrSignUp page after 2 seconds
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Load_sign_log()));
    });
    return Scaffold(
      backgroundColor: primarycolor,
      body: Center(
        child: Image.asset("assets/Vector.png"),
      ),
    );
  }
}
