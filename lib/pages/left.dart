import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
          child: Center(child: Lottie.asset("assets/animation/complete button.json"))),
    );
  }
}
