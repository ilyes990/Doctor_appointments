// ignore: camel_case_types
class Notifications {
  String appointement;
  String image;

  Notifications({
    required this.appointement,
    required this.image,
  });
}

List<Notifications> notiflist = [
  Notifications(appointement: 'Alarm', image: 'assets/Notification/Alarm.png'),
  Notifications(
      appointement: 'Confirmed',
      image: 'assets/Notification/appointement_confirmed.png'),
  Notifications(
      appointement: 'Alarm', image: 'assets/Notification/alarmyellow.png'),
];
