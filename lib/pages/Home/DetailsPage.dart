// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_mgmt_system/constants/Doctors.dart';
import 'package:doctor_mgmt_system/constants/Specialdoctor.dart';
import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/constants/smsORemail.dart';
import 'package:doctor_mgmt_system/constants/socialMedia.dart';
import 'package:doctor_mgmt_system/pages/BookAppointement/BookAppointment.dart';
import 'package:doctor_mgmt_system/provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  final doctors doctor;
  const DetailPage({
    required this.doctor,
    super.key,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int? _selectedValueIndex;
  @override
  Widget build(BuildContext context) {
    final card = Provider.of<ProviderCard>(context);

    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          actions: [
            InkWell(
              mouseCursor: MouseCursor.defer,
              radius: 13,
              splashColor: Color.fromARGB(54, 79, 155, 217),
              splashFactory: InkSparkle.splashFactory,
              onTap: () {
                card.isExist(widget.doctor)
                    ? card.delete(widget.doctor)
                    : card.addfavourite(widget.doctor);
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
                child: Image.asset(card.isExist(widget.doctor)
                    ? "assets/favourite.png"
                    : "assets/FavouriteOutlined.png"),
              ),
            ),
            InkWell(
              mouseCursor: MouseCursor.defer,
              radius: 13,
              splashColor: Color.fromARGB(54, 79, 155, 217),
              splashFactory: InkSparkle.splashFactory,
              onTap: () {
                displayBottomSheet(context);
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
                  "assets/share 1.png",
                ),
              ),
            ),
          ],
          title: Text(
            widget.doctor.name,
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
          )),
      body: Stack(children: [
        SingleChildScrollView(
          child: Container(
            height: screenHeight,
            child: Column(
              children: [
                // P H O T O
                Container(
                  width: 100,
                  height: 110,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("${widget.doctor.image}"))),
                ),

                // NAME

                Text(
                  widget.doctor.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),

                //SPECIALITE
                Text(
                  "Viralogist",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 89, 89, 89),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),

                SizedBox(
                  height: 20,
                ),
                // ROW  OF 3 CARDS

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WhiteCard(
                          icon: 'assets/persons.png',
                          color: Color.fromARGB(55, 124, 206, 244),
                          text: 'Patients',
                          number: '1000+'),
                      WhiteCard(
                          icon: 'assets/Experience.png',
                          color: Color.fromARGB(55, 244, 124, 152),
                          text: 'Exoerience',
                          number: '10 Yrs'),
                      WhiteCard(
                          icon: 'assets/star.png',
                          color: Color.fromARGB(55, 244, 214, 124),
                          text: 'Ratings',
                          number: '4.5'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // DESCRIPTION

                Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "About Doctor",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "${widget.doctor.name} is a top specialist at london bridge Hospital at london. He has achieved several awards and recognition for his contribution and service in his own field. He is available for private consultation.",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Color.fromARGB(119, 7, 20, 69)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //WORKING TIME
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Working time",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Mon - Sat (08:30 AM - 09:00 PM)",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: Color.fromARGB(119, 7, 20, 69)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //MAKE APPOINTEMENT
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Make Appointment",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                              appontmentslist.length,
                              (index) => Day(index,
                                  number: appontmentslist[index].number,
                                  day: appontmentslist[index].day),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        //BUTTON BOOK APPOINMENT
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 60,
            width: double.infinity,
            color: Color.fromARGB(255, 255, 255, 255),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bookappointment()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(primarycolor),
                padding: MaterialStateProperty.all(
                    EdgeInsets.fromLTRB(0, 20, 0, 20)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35))),
              ),
              child: Text(
                "Book Appointment",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  InkWell Day(
    int index, {
    required String number,
    required String day,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedValueIndex = index;
        });
      },
      child: Container(
        width: 80, // Width of each container
        height: 110, // Height of each container
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color.fromARGB(92, 99, 98, 98)),
          borderRadius: BorderRadius.circular(10),
          color: index == _selectedValueIndex
              ? primarycolor
              : Color.fromARGB(
                  255, 255, 255, 255), // Container background color
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(39, 189, 189, 189), // Shadow color
              offset: Offset(2, 19), // Shadow offset
              blurRadius: 30, // Shadow blur radius
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Number
              Text(
                number,
                style: TextStyle(
                    fontSize: 20,
                    color: index == _selectedValueIndex
                        ? Colors.white
                        : Color.fromARGB(195, 72, 72, 72),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              // TEXT
              Text(
                day,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: index == _selectedValueIndex
                      ? Colors.white
                      : Color.fromARGB(195, 72, 72, 72),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container WhiteCard(
      {required String icon,
      required Color color,
      required String text,
      required String number}) {
    return Container(
      width: 100, // Width of each container
      height: 130, // Height of each container
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white, // Container background color
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(39, 189, 189, 189), // Shadow color
            offset: Offset(2, 19), // Shadow offset
            blurRadius: 30, // Shadow blur radius
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // C O L O R F U L   I C O N
            Container(
              width: 40,
              height: 60,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 17),
                child: Image.asset(icon),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Number
            Text(
              number,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            // TEXT
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: const Color.fromARGB(134, 0, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }

  Future displayBottomSheet(BuildContext context) {
    final cardd = Provider.of<ProviderCard>(context, listen: false);
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        barrierColor: Colors.black87.withOpacity(0.5),
        builder: (context) => Container(
              height: 300,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        "Share",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
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
                            socialMediaslist.length, // total number of items
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(socialMediaslist[
                                                index]
                                            .asset))), // color of grid items
                              ),
                              Text(
                                socialMediaslist[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: const Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
