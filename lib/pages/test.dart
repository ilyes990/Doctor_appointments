// ignore_for_file: prefer_const_constructors

import 'package:doctor_mgmt_system/constants/Specialdoctor.dart';
import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          width: double.infinity,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of items in each row
              mainAxisSpacing: 40.0, // spacing between rows
              crossAxisSpacing: 40.0, // spacing between columns
              mainAxisExtent: 165,
            ),
            padding: EdgeInsets.all(8.0), // padding around the grid
            itemCount: specialistBiggerImages.length, // total number of items
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                hoverColor: Color.fromARGB(22, 144, 183, 215),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(specialistBiggerImages[index].asset),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(specialistBiggerImages[index].icon),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            specialistBiggerImages[index].specialite,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "265 Doctors",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color.fromARGB(177, 255, 255, 255),
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
