import 'package:flutter/material.dart';
class ShoePage extends StatelessWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(7),
                height: 170,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


