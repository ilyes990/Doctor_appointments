// ignore: camel_case_types
class smsORemail {
  String via;
  String icon;
  String content;
  smsORemail({
    required this.via,
    required this.icon,
    required this.content,
  });
}

List<smsORemail> buttontexts = [
  smsORemail(via: "SMS", icon: "assets/chat.png", content: "+213674****77"),
  smsORemail(
      via: "Email",
      icon: "assets/Rectangle.png",
      content: "Ilyes.sissaoui@gmail.com"),
];

class MorningOrEvening {
  String text;
  String icon;

  MorningOrEvening({
    required this.text,
    required this.icon,
  });
}

List<MorningOrEvening> morningOrEvening = [
  MorningOrEvening(
    text: "Morning",
    icon: "assets/chat.png",
  ),
  MorningOrEvening(
    text: "Evening",
    icon: "assets/Rectangle.png",
  ),
];

class Hour {
  String text;

  Hour({
    required this.text,
  });
}

List<Hour> hours = [
  Hour(text: "09:00AM"),
  Hour(text: "09:00AM"),
  Hour(text: "10:00AM"),
  Hour(text: "11:00AM"),
  Hour(text: "13:00AM"),
  Hour(text: "14:00AM"),
  Hour(text: "15:00AM"),
  Hour(text: "16:00AM"),
  Hour(text: "17:00AM"),
];

class FreeInformation {
  String icon;
  String title;
  String text;
  String price;

  FreeInformation({
    required this.icon,
    required this.title,
    required this.text,
    required this.price,
  });
}

List<FreeInformation> feeInformations = [
  FreeInformation(
      icon: "assets/chat.png",
      title: "Messaging",
      text: "Can messaging with doctor",
      price: "\$5"),
  FreeInformation(
      icon: "assets/call.png",
      title: "Voice Call",
      text: "Can make a voice call with doctor",
      price: "\$10"),
  FreeInformation(
      icon: "assets/videocam.png",
      title: "Video Call",
      text: "Can make a video call with doctor",
      price: "\$20"),
];

class Age {
  String text;

  Age({
    required this.text,
  });
}

List<Age> ages = [
  Age(text: "1 - 17"),
  Age(text: "18 - 24"),
  Age(text: "25 - 45"),
  Age(text: "46 - 76"),
  Age(text: "77 - 100"),
  Age(text: "+100"),
];

class Appointments {
  String day;
  String number;

  Appointments({required this.day, required this.number});
}

List<Appointments> appontmentslist = [
  Appointments(day: "MON", number: "13"),
  Appointments(day: "TUE", number: "14"),
  Appointments(day: "WED", number: "15"),
  Appointments(day: "THU", number: "16"),
];
