class DoctorModel{
  String name;
  String image;
  String speciality;
  int payment;
  int patientNo;
  String experience;
  String rating;
  List appointmentDays;
  List appointmentTimes;
  String aboutDoc;

  DoctorModel({
    required this.name,
    required this.image,
    required this.speciality,
    required this.payment,
    required this.patientNo,
    required this.experience,
    required this.rating,
    required this.appointmentDays,
    required this.appointmentTimes,
    required this.aboutDoc,
});
}