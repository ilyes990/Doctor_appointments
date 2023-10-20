// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/constants/smsORemail.dart';
import 'package:flutter/material.dart';

class FPone extends StatefulWidget {
  const FPone({super.key});

  @override
  State<FPone> createState() => _FPoneState();
}

class _FPoneState extends State<FPone> {
  int? _selectedValueIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    // T E X T
                    Text(
                      "Select which contact details should we use to reset your password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // V I A    S M S  / V I A   E M A I L
                    Column(
                      children: [
                        ...List.generate(
                          buttontexts.length,
                          (index) => Card(
                              via: buttontexts[index].via,
                              index: index,
                              icon: buttontexts[index].icon,
                              content: buttontexts[index].content),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }

  Widget Card(
      {required String via,
      required int index,
      required icon,
      required String content}) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          _selectedValueIndex = index;
        });
      },
      child: Container(
          margin: EdgeInsets.only(bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 2,
                  color: index == _selectedValueIndex
                      ? Colors.blue
                      : Colors.white)),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Center(
            child: Row(
              children: [
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(167, 224, 241, 252),
                  ),
                  child: Image.asset(icon),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "via $via",
                      style:
                          TextStyle(color: grey, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      content,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
