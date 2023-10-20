// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UnbordingContent {
  Color backgroundcolor;
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image,
      required this.title,
      required this.discription,
      required this.backgroundcolor});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      backgroundcolor: Color.fromARGB(255, 151, 184, 244),
      title: 'Thousands of doctors',
      image:
          'assets/Doctors/austin-distel-7bMdiIqz_J4-unsplash-removebg-preview 2.png',
      discription:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "),
  UnbordingContent(
      backgroundcolor: Color.fromARGB(255, 132, 211, 171),
      title: 'Chat with doctors',
      image:
          'assets/Doctors/national-cancer-institute-kooSjlL8LnQ-unsplash-removebg-preview 1.png',
      discription:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry'sColor.fromARGB(255, 244, 151, 177)e 1500s, "
          "when an unknown printer took a galley of type and scrambled it "),
  UnbordingContent(
      backgroundcolor: Color.fromARGB(255, 244, 151, 184),
      title: 'Live talk with doctors',
      image:
          'assets/Doctors/national-doctors-day-1-920x518-removebg-preview 2.png',
      discription:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
          "industry's standard dummy text ever since the 1500s, "
          "when an unknown printer took a galley of type and scrambled it "),
];
