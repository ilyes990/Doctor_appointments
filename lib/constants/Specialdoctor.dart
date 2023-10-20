// ignore: camel_case_types
class Specialdoctor {
  String specialite;
  String icon;
  String asset;
  Specialdoctor({
    required this.specialite,
    required this.asset,
    this.icon = "default value",
  });
}

List<Specialdoctor> specialdoctorslist = [
  Specialdoctor(
    specialite: 'Consultation',
    asset: 'assets/Specialiste/Consultation.png',
  ),
  Specialdoctor(
    specialite: 'Dental',
    asset: 'assets/Specialiste/Dental.png',
  ),
  Specialdoctor(
    specialite: 'Heart',
    asset: 'assets/Specialiste/Heart.png',
  ),
  Specialdoctor(
    specialite: 'Hospitals',
    asset: 'assets/Specialiste/Hospitals.png',
  ),
  Specialdoctor(
    specialite: 'Medicines',
    asset: 'assets/Specialiste/Medicines.png',
  ),
  Specialdoctor(
    specialite: 'Physicians',
    asset: 'assets/Specialiste/Phyisicians.png',
  ),
  Specialdoctor(
    specialite: 'Skin',
    asset: 'assets/Specialiste/SKin.png',
  ),
  Specialdoctor(
    specialite: 'Surgeon',
    asset: 'assets/Specialiste/Surgeon.png',
  ),
];

List<Specialdoctor> specialistBiggerImages = [
  Specialdoctor(
      specialite: 'Heart specialist',
      asset: 'assets/Specialiste/Bigger/Ic_Heart_Red.png',
      icon: 'assets/Specialiste/Bigger/Icons/017-heart.png'),
  Specialdoctor(
      specialite: 'Dental specialist',
      asset: 'assets/Specialiste/Bigger/Ic_Heart_blue.png',
      icon: 'assets/Specialiste/Bigger/Icons/Teeth.png'),
  Specialdoctor(
      specialite: 'Heart specialist',
      asset: 'assets/Specialiste/Bigger/Yellow.png',
      icon: 'assets/Specialiste/Bigger/Icons/eye.png'),
  Specialdoctor(
      specialite: 'Heart specialist',
      asset: 'assets/Specialiste/Bigger/Green.png',
      icon: 'assets/Specialiste/Bigger/Icons/brain 1.png'),
  Specialdoctor(
      specialite: 'Bone specialist',
      asset: 'assets/Specialiste/Bigger/Ic_Heart_Lightblue.png',
      icon: 'assets/Specialiste/Bigger/Icons/bone 1.png'),
  Specialdoctor(
      specialite: 'Ear specialist',
      asset: 'assets/Specialiste/Bigger/Ic_Heart_orange.png',
      icon: 'assets/Specialiste/Bigger/Icons/ear 1.png'),
  Specialdoctor(
      specialite: 'Heart specialist',
      asset: 'assets/Specialiste/Bigger/Ic_Heart_purple.png',
      icon: 'assets/Specialiste/Bigger/Icons/017-heart.png'),
  Specialdoctor(
      specialite: 'Heart specialist',
      asset: 'assets/Specialiste/Bigger/Ic_Heart.png',
      icon: 'assets/Specialiste/Bigger/Icons/017-heart.png'),
];
