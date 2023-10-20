import 'package:doctor_mgmt_system/constants/Doctors.dart';
import 'package:flutter/material.dart';

class ProviderCard with ChangeNotifier {
  List selectedDoctors = [];

  void toggleFavoriteDoctor(doctors doctor) {
    final isExist = selectedDoctors.contains(doctor);
    if (isExist) {
      selectedDoctors.remove(doctor);
    } else {
      selectedDoctors.add(doctor);
    }
    notifyListeners();
  }

  bool isExist(doctors doctor) {
    final isExist = selectedDoctors.contains(doctor);
    return isExist;
  }

  addfavourite(doctors doctor) {
    selectedDoctors.add(doctor);
    notifyListeners();
  }

  delete(doctors product) {
    selectedDoctors.remove(product);

    notifyListeners();
  }

  get doctorCount {
    return doctorsslist.length;
  }
}
