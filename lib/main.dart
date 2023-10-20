// ignore_for_file: prefer_const_constructors

import 'package:doctor_mgmt_system/pages/BookAppointement/BookAppointment.dart';
import 'package:doctor_mgmt_system/pages/Home/Home.dart';
import 'package:doctor_mgmt_system/pages/Loading_screen_Blue.dart';
import 'package:doctor_mgmt_system/pages/Onboarding.dart';
import 'package:doctor_mgmt_system/pages/Signup.dart';
import 'package:doctor_mgmt_system/provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ProviderCard();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        home: Onboarding(),
      ),
    );
  }
}
