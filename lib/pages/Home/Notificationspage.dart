// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:doctor_mgmt_system/constants/Notifications.dart';
import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
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
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          elevation: 0,
          backgroundColor: background,
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Today
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Today march 25th 2023",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),

              //Appointement Alarm
              SizedBox(
                height: 20,
              ),
              Notification(
                  image: "${notiflist[0].image}",
                  appointement: notiflist[0].appointement),
              SizedBox(
                height: 20,
              ),
              //Appointement Confirmed
              Notification(
                  image: "${notiflist[1].image}",
                  appointement: notiflist[1].appointement),
              SizedBox(
                height: 20,
              ),
              // Yesterday
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Today march 25th 2023",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Appointement Alarm Yellow
              Notification(
                  image: "${notiflist[2].image}",
                  appointement: notiflist[2].appointement),
              // Yesterday
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Today march 25th 2023",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Appointement Alarm
              Notification(
                  image: "${notiflist[0].image}",
                  appointement: notiflist[0].appointement),
            ],
          ),
        ),
      ),
    );
  }

  InkWell Notification({required String image, required String appointement}) {
    return InkWell(
      hoverColor: background,
      splashColor: background,
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image),
            SizedBox(
              width: 17,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Appointement $appointement",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Your appointment will be started\nafter 15 minutes, stay with app\nand take care",
                  textAlign: TextAlign.left,
                  maxLines: 3,
                  softWrap: true,
                  style: TextStyle(
                      fontSize: 13,
                      color: const Color.fromARGB(255, 102, 102, 102)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
