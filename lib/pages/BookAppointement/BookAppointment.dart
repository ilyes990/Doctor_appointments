// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/constants/smsORemail.dart';
import 'package:doctor_mgmt_system/constants/socialMedia.dart';
import 'package:doctor_mgmt_system/pages/BookAppointement/PatientDetails.dart';
import 'package:flutter/material.dart';

class Bookappointment extends StatefulWidget {
  const Bookappointment({super.key});

  @override
  State<Bookappointment> createState() => _BookappointmentState();
}

class _BookappointmentState extends State<Bookappointment> {
  int? _selectedValueIndex;
  int? _selectedAgeIndex;
  int? _selectedHourIndex;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Book Appointment",
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 50),
              height: screenHeight,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  // MORNING   OR  EVE NING
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Monday, March 25 2022",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),

                  SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(
                        morningOrEvening.length,
                        (index) => MorningOrEvening(index),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  // CHOOSING HOUR
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Choose the Hour",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),

                  ChooseTheHour(),
                  SizedBox(
                    height: 19,
                  ),
                  // FEE INFORMATION
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Fee Information",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Column(
                    children: [
                      ...List.generate(
                        feeInformations.length,
                        (index) => Card(
                            title: feeInformations[index].title,
                            index: index,
                            icon: feeInformations[index].icon,
                            text: feeInformations[index].text,
                            price: feeInformations[index].price),
                      ),
                    ],
                  ),
                  // BUTTON NEXT
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 80,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PatientDetails()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(primarycolor),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(0, 20, 0, 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35))),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  SizedBox ChooseTheHour() {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // number of items in each row
          mainAxisSpacing: 20.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
          mainAxisExtent: 40,
        ),
        padding: EdgeInsets.all(8.0), // padding around the grid
        itemCount: hours.length, // total number of items
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                _selectedHourIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: index == _selectedHourIndex
                      ? primarycolor
                      : Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: primarycolor, width: 1.5)),
              child: Center(
                child: Text(
                  hours[index].text,
                  style: TextStyle(
                      color: index == _selectedHourIndex
                          ? Color.fromARGB(255, 255, 255, 255)
                          : primarycolor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  InkWell MorningOrEvening(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedAgeIndex = index;
        });
      },
      child: Container(
        height: 45,
        width: 170,
        decoration: BoxDecoration(
            color: index == _selectedAgeIndex
                ? primarycolor
                : Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: primarycolor, width: 2.5)),
        child: Center(
          child: Text(
            morningOrEvening[index].text,
            style: TextStyle(
                color: index == _selectedAgeIndex
                    ? Color.fromARGB(255, 255, 255, 255)
                    : primarycolor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget Card(
      {required String title,
      required String price,
      required int index,
      required icon,
      required String text}) {
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
          height: 100,
          decoration: BoxDecoration(
              color: index == _selectedValueIndex ? primarycolor : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 1,
                  color: index == _selectedValueIndex
                      ? Colors.blue
                      : Color.fromARGB(146, 215, 215, 215))),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 229, 241, 249),
                    ),
                    child: Image.asset(icon),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: index == _selectedValueIndex
                                ? Color.fromARGB(255, 238, 238, 238)
                                : Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            color: index == _selectedValueIndex
                                ? Color.fromARGB(255, 238, 238, 238)
                                : Color.fromARGB(149, 84, 84, 84),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    price,
                    style: TextStyle(
                        color: index == _selectedValueIndex
                            ? Color.fromARGB(255, 238, 238, 238)
                            : primarycolor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
