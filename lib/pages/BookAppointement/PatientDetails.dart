// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/constants/smsORemail.dart';
import 'package:flutter/material.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key});

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  int? _selectedValueIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Patient Detailst",
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
              color: Colors.white,
            ),
          )),
      body: Container(
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(children: [
              // FULL NAME

              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 28),
                width: double.infinity,
                child: Text(
                  "Full Name",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Textfield(hinttext: "Full Name", maxline: 1, minline: 1),
              SizedBox(
                height: 14,
              ),

              // SELECT YOUR AGE RANGE

              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 28),
                width: double.infinity,
                child: Text(
                  "Select your age Range",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                margin: const EdgeInsets.only(left: 28),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(
                        ages.length,
                        (index) => Selectage(index),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),

              // PHONE NUMBER

              Container(
                margin: EdgeInsets.only(left: 28),
                width: double.infinity,
                child: Text(
                  "Phone number",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Textfield(hinttext: "Email", maxline: 1, minline: 1),
              SizedBox(
                height: 14,
              ),

              // Gender

              Container(
                margin: EdgeInsets.only(left: 28),
                width: double.infinity,
                child: Text(
                  "Gender",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Textfield(hinttext: "Gender", minline: 1, maxline: 1),
              SizedBox(
                height: 14,
              ),

              // WRITE PROBLEM

              Container(
                margin: EdgeInsets.only(left: 28),
                width: double.infinity,
                child: Text(
                  "Write your problem",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Textfield(
                  hinttext: "Tell the doctor about your problem",
                  maxline: 8,
                  minline: 4),
              SizedBox(
                height: 14,
              ),

              SizedBox(
                height: 35,
              ),
              // N E X T
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
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
            ]),
          ),
        ]),
      ),
    );
  }

  Container Textfield(
      {required String hinttext, required int maxline, required int minline}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(40), boxShadow: [
        BoxShadow(
          color: Color.fromARGB(22, 4, 4, 176),
          offset: const Offset(0, 20),
          blurRadius: 30,
        ),
      ]),
      child: TextField(
        minLines: minline, // Set this
        maxLines: maxline,
        style: TextStyle(color: Color.fromARGB(212, 0, 0, 0)),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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

  InkWell Selectage(int index) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          _selectedValueIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 10,
        ),
        height: 45,
        width: 100,
        decoration: BoxDecoration(
            color: index == _selectedValueIndex
                ? primarycolor
                : Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: primarycolor, width: 2.5)),
        child: Center(
          child: Text(
            ages[index].text,
            style: TextStyle(
                color: index == _selectedValueIndex
                    ? Color.fromARGB(255, 255, 255, 255)
                    : primarycolor,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
