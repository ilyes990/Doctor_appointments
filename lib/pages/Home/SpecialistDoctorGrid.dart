// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_mgmt_system/constants/Specialdoctor.dart';
import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/pages/Home/ViewallDoctors.dart';
import 'package:flutter/material.dart';

class SpecialistDoctorsGrid extends StatefulWidget {
  const SpecialistDoctorsGrid({super.key});

  @override
  State<SpecialistDoctorsGrid> createState() => _SpecialistDoctorsGridState();
}

class _SpecialistDoctorsGridState extends State<SpecialistDoctorsGrid> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          InkWell(
            mouseCursor: MouseCursor.defer,
            radius: 13,
            splashColor: Color.fromARGB(54, 79, 155, 217),
            splashFactory: InkSparkle.splashFactory,
            onTap: () {},
            child: Container(
              width: 45,
              height: 45,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 213, 225, 251),
              ),
              child: Image.asset("assets/Searchdoctor.png"),
            ),
          ),
        ],
        title: Text(
          "Specialist Doctor",
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
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 26,
              ),
              // SEARCH  T E X T F I E L D
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(15, 4, 4, 176),
                        offset: const Offset(0, 20),
                        blurRadius: 40,
                      ),
                    ]),
                child: TextField(
                  style: TextStyle(color: Color.fromARGB(212, 0, 0, 0)),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Image.asset(
                        "assets/Searcg.png",
                      ),
                      onPressed: () {},
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 237, 242, 244),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 227, 232, 234),
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: primarycolor,
                          width: 2,
                        )),
                    hintText: "Search",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(196, 109, 108, 108)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //  G R I D V I E W
              SizedBox(
                height: screenHeight,
                width: double.infinity,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 35.0, // spacing between rows
                    crossAxisSpacing: 30.0, // spacing between columns
                    mainAxisExtent: 160,
                  ),
                  padding: EdgeInsets.all(8.0), // padding around the grid
                  itemCount:
                      specialistBiggerImages.length, // total number of items
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Viewalldoctors()));
                      },
                      hoverColor: Color.fromARGB(22, 144, 183, 215),
                      child: Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage(specialistBiggerImages[index].asset),
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
                                      color: const Color.fromARGB(
                                          177, 255, 255, 255),
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
            ],
          ),
        ),
      ),
    );
  }
}
