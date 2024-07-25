import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/pages/profile.dart';
import 'package:flutter/material.dart';
class DessupHome extends StatelessWidget {
  const DessupHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
