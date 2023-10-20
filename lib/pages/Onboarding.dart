// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'dart:math';

import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/contents.dart';
import 'package:doctor_mgmt_system/pages/Home/Home.dart';
import 'package:doctor_mgmt_system/pages/Loading_screen_Blue.dart';
import 'package:doctor_mgmt_system/pages/Signup.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        // P A G E V I E W   S L I D I N G
        Expanded(
          flex: 3,
          child: PageView.builder(
              controller: _controller,
              itemCount: 3,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return SizedBox(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration:
                              BoxDecoration(color: contents[i].backgroundcolor),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                bottom: 0,
                                child: SizedBox(
                                  width: 500,
                                  height: 350,
                                  child: Image.asset(contents[i].image),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                // T I T L E

                                Text(
                                  "Thousands of doctors",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: primarycolor,
                                      fontSize: 23),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                // SHORT DESCRIPTION

                                Text(
                                  "You can easily connect with thousands of doctors and contract for your needs.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(212, 47, 47, 47),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),

        // B U T T O N S

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                // BUILD DOTS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => buildDot(index, context),
                  ),
                ),

                SizedBox(
                  height: 35,
                ),
                // S K I P   B U T T O N

                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                      onPressed: () {
                        if (currentIndex == contents.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Loading_screen_blue(),
                            ),
                          );
                        }
                        _controller.nextPage(
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.ease,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            width: 1.0,
                            color: primarycolor,
                          )),
                      child: Text(
                        currentIndex == contents.length - 1
                            ? "Continue"
                            : "Skip",
                        style: TextStyle(color: primarycolor, fontSize: 19),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                // S I G N  U P    B U T T O N
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loading_screen_blue()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primarycolor,
                          side: BorderSide(
                            width: 1.0,
                            color: primarycolor,
                          )),
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      )),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? primarycolor
            : Color.fromARGB(255, 204, 204, 204),
      ),
    );
  }
}



//  Container buildDot(int index, BuildContext context) {
//     return Container(
//       height: 10,
//       width: currentIndex == index ? 25 : 10,
//       margin: EdgeInsets.only(right: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Theme.of(context).primaryColor,
//       ),
//     );
//   }
// }
