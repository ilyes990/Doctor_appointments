// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/constants/smsORemail.dart';
import 'package:doctor_mgmt_system/pages/Home/Home.dart';
import 'package:flutter/material.dart';

class FPtwo extends StatefulWidget {
  const FPtwo({super.key});

  @override
  State<FPtwo> createState() => _FPtwoState();
}

class _FPtwoState extends State<FPtwo> {
  bool? hasvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Code has been sent to ${buttontexts[0].content}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            // E N T E R   C O D E
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _textFieldOTP(first: true, last: false),
                _textFieldOTP(first: false, last: false),
                _textFieldOTP(first: false, last: false),
                _textFieldOTP(first: false, last: true),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            //  R E S E N D    C O D E
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Resend code in ",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    " 54 ",
                    style: TextStyle(
                        color: primarycolor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Text(
                    " s",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _textFieldOTP({
    required bool first,
    required bool last,
  }) {
    return Container(
      height: 100,
      width: 70,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.isNotEmpty && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(186, 255, 255, 255),
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black12),
                borderRadius: BorderRadius.circular(14)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: primarycolor),
                borderRadius: BorderRadius.circular(14)),
          ),
        ),
      ),
    );
  }
}
