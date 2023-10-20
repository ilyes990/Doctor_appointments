// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctor_mgmt_system/constants/Doctors.dart';
import 'package:doctor_mgmt_system/constants/Specialdoctor.dart';
import 'package:doctor_mgmt_system/constants/colors.dart';
import 'package:doctor_mgmt_system/provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteDoctors extends StatefulWidget {
  const FavouriteDoctors({super.key});

  @override
  State<FavouriteDoctors> createState() => _FavouriteDoctorsState();
}

class _FavouriteDoctorsState extends State<FavouriteDoctors> {
  @override
  Widget build(BuildContext context) {
    final void Function()? onTap;
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
          "Favourite Doctor",
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
      backgroundColor: Color.fromARGB(255, 246, 248, 250),
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
                    mainAxisSpacing: 30.0, // spacing between rows
                    crossAxisSpacing: 3.0, // spacing between columns
                    mainAxisExtent: 190,
                  ),
                  padding: EdgeInsets.all(8.0), // padding around the grid
                  itemCount:
                      card.selectedDoctors.length, // total number of items
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {},
                        hoverColor: Color.fromARGB(22, 144, 183, 215),
                        child: Container(
                            margin: EdgeInsets.only(right: 20),
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 1,
                                  top: 11,
                                  child: InkWell(
                                    mouseCursor: MouseCursor.defer,
                                    radius: 13,
                                    splashColor:
                                        Color.fromARGB(54, 79, 155, 217),
                                    splashFactory: InkSparkle.splashFactory,
                                    onTap: () {
                                      displayBottomSheet(context,
                                          doctorimage:
                                              card.selectedDoctors[index].image,
                                          Ontap: card.selectedDoctors[index]);

                                      // card.delete(card.selectedDoctors[index]);
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: EdgeInsets.all(7),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 226, 235, 253),
                                      ),
                                      child:
                                          Image.asset("assets/favourite.png"),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 17,
                                        ),
                                        Container(
                                          height: 68,
                                          width: 68,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "${card.selectedDoctors[index].image}"))),
                                        ),
                                        SizedBox(
                                          height: 17,
                                        ),
                                        Text(
                                          "${card.selectedDoctors[index].name}",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          " ${card.selectedDoctors[index].specialite}",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          "⭐ 4.5(135 reviews)",
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future displayBottomSheet(
    BuildContext context,
    // ignore: non_constant_identifier_names
    {
    required String doctorimage,
    required doctors Ontap,
  }) {
    final cardd = Provider.of<ProviderCard>(context, listen: false);
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        barrierColor: Colors.black87.withOpacity(0.5),
        builder: (context) => Container(
              height: 300,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //      C   A   R   D
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(138, 152, 152, 152),
                                width: 1)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      doctorimage,
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
                                      // doctorsslist[index].name,
                                      "Dr Eleanor Pena",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Text(
                                      // doctorsslist[index].specialite,
                                      "Cardio",
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      // Remove from favourite ?

                      Text(
                        "Remove from favourite ?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 100, 99, 99),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      // T W O   B U T T O N S
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 56,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                    width: 1,
                                    color: primarycolor,
                                  ),
                                ),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: primarycolor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 56,
                              child: ElevatedButton(
                                onPressed: () {
                                  cardd.delete(Ontap);
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primarycolor,
                                  side: BorderSide(
                                    width: 1.5,
                                    color: primarycolor,
                                  ),
                                ),
                                child: Text(
                                  "Remove",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
