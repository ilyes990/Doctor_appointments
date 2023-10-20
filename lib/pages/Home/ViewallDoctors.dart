// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_mgmt_system/constants/Doctors.dart';
import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/pages/Home/DetailsPage.dart';
import 'package:doctor_mgmt_system/provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class Viewalldoctors extends StatefulWidget {
  const Viewalldoctors({super.key});

  @override
  State<Viewalldoctors> createState() => _ViewalldoctorsState();
}

class _ViewalldoctorsState extends State<Viewalldoctors> {
  @override
  Widget build(BuildContext context) {
    final card = Provider.of<ProviderCard>(context);

    final screenHeight = MediaQuery.of(context).size.height;
    bool isselected = true;
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GNav(
              tabBorderRadius: 7,
              backgroundColor: Colors.white,
              gap: 8,
              tabBackgroundColor: Color.fromARGB(118, 213, 229, 248),
              padding: EdgeInsets.all(17),
              activeColor: primarycolor,
              tabs: [
                GButton(
                  leading: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Image.asset("assets/Home.png"),
                  ),
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  leading: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Image.asset("assets/Calendrier.png"),
                  ),
                  icon: Icons.home,
                  text: 'Calendrier',
                ),
                GButton(
                  leading: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Image.asset("assets/Notes.png"),
                  ),
                  icon: Icons.home,
                  text: 'Notes',
                ),
                GButton(
                  leading: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Image.asset("assets/Person.png"),
                  ),
                  icon: Icons.home,
                  text: 'Profile',
                ),
              ]),
        ),
      ),
      appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
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
                fillColor: Color.fromARGB(255, 227, 232, 234),
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
                hintStyle: TextStyle(color: Color.fromARGB(196, 109, 108, 108)),
              ),
            ),
          ),
          elevation: 0,
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
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 13,
              ),
              Container(
                padding: EdgeInsets.only(bottom: 100),
                width: double.infinity,
                height: screenHeight,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: doctorsslist.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ddoctor = doctorsslist[index];
                    //  Text(doctorsslist[index].name),
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(doctor: ddoctor)));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: Color.fromARGB(139, 203, 203, 203),
                                width: 1)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      doctorsslist[index].image,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      doctorsslist[index].name,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Text(
                                      doctorsslist[index].specialite,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "⭐ 4.5(135 reviews)",
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      card.isExist(doctorsslist[index])
                                          ? card.delete(doctorsslist[index])
                                          : card.addfavourite(
                                              doctorsslist[index]);
                                    });
                                  },
                                  icon: Container(
                                    width: 34,
                                    height: 34,
                                    padding: EdgeInsets.all(8),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 213, 225, 251),
                                    ),
                                    child: Image.asset(
                                        card.isExist(doctorsslist[index])
                                            ? "assets/favourite.png"
                                            : "assets/FavouriteOutlined.png"),
                                  ),
                                ),
                              ),
                            )
                          ],
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
