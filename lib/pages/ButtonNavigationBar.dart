import 'package:app_development_batch/data/doctor_list.dart';
import 'package:app_development_batch/pages/doctor_home.dart';
import 'package:app_development_batch/pages/doctors_details.dart';
import 'package:app_development_batch/pages/hospital_home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class Buttonnavigationbar extends StatefulWidget {
  const Buttonnavigationbar({super.key});

  @override
  State<Buttonnavigationbar> createState() => _ButtonnavigationbarState();
}

class _ButtonnavigationbarState extends State<Buttonnavigationbar> {
  List list=[
    DoctorHome(),
    DoctorsDetails(doctorModel: allDocs[0],),
    HospitalHome(),
  ];

  // List<BottomNavigationBarItem> allitems = [
  List<Icon> allitems=[
  //   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
  //   BottomNavigationBarItem(icon: Icon(Icons.category),label: "Details"),
  //   BottomNavigationBarItem(icon: Icon(Icons.search),label: "Hospital"),
    Icon(Icons.home),
    Icon(Icons.category),
    Icon(Icons.search)
   ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        // selectedItemColor: Colors.blueAccent,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        // currentIndex: _currentIndex,
        onTap:(int index){
          _currentIndex = index;
          setState(() {

          });
        },
        items:allitems,
      ),
    );
  }
}
