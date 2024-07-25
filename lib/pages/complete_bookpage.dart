import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class CompleteBookpage extends StatelessWidget {
  const CompleteBookpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Lottie.asset("assets/animation/bookbutton.json"),)
          ],
        ),
      ),
    );
  }
}
