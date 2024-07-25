import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class anime extends StatelessWidget {
  const anime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Column(
          children: [
            Lottie.asset("assets/animation/anime.json"),
          ],
        ),
      ),
    );
  }
}
