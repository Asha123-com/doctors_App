import 'package:app_development_batch/dessup/pages/dessup%20page.dart';
import 'package:app_development_batch/pages/ButtonNavigationBar.dart';
import 'package:app_development_batch/pages/Dialogue%20method.dart';
import 'package:app_development_batch/pages/SplashScreen.dart';
import 'package:app_development_batch/pages/carousel_slider.dart';
import 'package:app_development_batch/pages/doctor_home.dart';
import 'package:app_development_batch/pages/register.dart';
import 'package:app_development_batch/pages/stack_prac.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DoctorHome(),
    );
  }
}
