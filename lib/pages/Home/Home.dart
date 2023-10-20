// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:doctor_mgmt_system/pages/Home/DetailsPage.dart';
import 'package:doctor_mgmt_system/pages/Home/FavouriteDoctors.dart';
import 'package:doctor_mgmt_system/pages/Home/Notificationspage.dart';
import 'package:doctor_mgmt_system/pages/Home/SpecialistDoctorGrid.dart';
import 'package:doctor_mgmt_system/pages/Home/ViewallDoctors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:doctor_mgmt_system/constants/Doctors.dart';
import 'package:doctor_mgmt_system/constants/Specialdoctor.dart';
import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/pages/Onboarding.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
          actions: [
            InkWell(
              mouseCursor: MouseCursor.defer,
              radius: 13,
              splashColor: Color.fromARGB(54, 79, 155, 217),
              splashFactory: InkSparkle.splashFactory,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavouriteDoctors()));
              },
              child: Container(
                width: 45,
                height: 45,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 213, 225, 251),
                ),
                child: Image.asset("assets/favourite.png"),
              ),
            ),
            InkWell(
              mouseCursor: MouseCursor.defer,
              radius: 13,
              splashColor: Color.fromARGB(54, 79, 155, 217),
              splashFactory: InkSparkle.splashFactory,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationsPage()));
              },
              child: Container(
                width: 45,
                height: 45,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 213, 225, 251),
                ),
                child: Image.asset(
                  "assets/notification.png",
                ),
              ),
            ),
          ],
          title: Text(
            "Doctorek",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          leading: Transform.scale(
            scale: 1.4,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/Vector_blue.png",
                ),
                color: primarycolor,
              ),
            ),
          )),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19,
                ),
                // F I N D  Y O U R   D O C T O R

                Row(
                  children: [
                    Text(
                      'Find',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      ' your doctor',
                      style: TextStyle(
                          color: Color.fromARGB(255, 170, 168, 168),
                          fontSize: 33,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                // S E A R C H

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
                      hintStyle:
                          TextStyle(color: Color.fromARGB(196, 109, 108, 108)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                // G R I D V I E W       S P E C I A L    D O C T O R
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Special doctor',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SpecialistDoctorsGrid()));
                      },
                      child: Text(
                        ' View all',
                        style: TextStyle(
                            color: primarycolor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),

                SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, // number of items in each row
                      mainAxisSpacing: 2.0, // spacing between rows
                      crossAxisSpacing: 8.0, // spacing between columns
                      mainAxisExtent: 100,
                    ),
                    padding: EdgeInsets.all(8.0), // padding around the grid
                    itemCount:
                        specialdoctorslist.length, // total number of items
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Viewalldoctors()));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          specialdoctorslist[index]
                                              .asset))), // color of grid items
                            ),
                            Text(
                              specialdoctorslist[index].specialite,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // G R I D V I E W   T O P  D O C T O R S
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Doctors',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Viewalldoctors()));
                        },
                        child: Text(
                          ' View all',
                          style: TextStyle(
                              color: primarycolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(doctorsslist.length, (index) {
                      return Card(
                        context,
                        doctorname: doctorsslist[index].name,
                        specialite: doctorsslist[index].specialite,
                        image: doctorsslist[index].image,
                        gotodetail: doctorsslist[index],
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container Card(BuildContext context,
      {required String doctorname,
      required doctors gotodetail,
      required String specialite,
      required String image}) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 246, 248, 250),
          border: Border.all(
              color: Color.fromARGB(172, 158, 158, 158), width: 0.4)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  (DetailPage(doctor: gotodetail)), // Pass the selected doctor
            ),
          );
        },
        child: ClipRRect(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 68,
                  width: 68,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(image))),
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  doctorname,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  specialite,
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
      ),
    );
  }
}
