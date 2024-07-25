import 'package:app_development_batch/google%20font.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class ambulance extends StatelessWidget {
  const ambulance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
              style: myStyal(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: myStyal(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",
                  style: myStyal(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Lottie.asset("assets/animation/Animation - 1720851513982.json")),
          Text("We are always here to help you",style: myStyal(20,Colors.black,FontWeight.bold),),
          SizedBox(
            height: 60,
            width: 50,
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: primaryColor
            ),
            child: Center(child: Text("Call 112",style: myStyal(20,Colors.white,FontWeight.bold)),),
          ),
        ],
      ),
    );
  }
}
