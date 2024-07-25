import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/model%20class/whatapp_model.dart';
import 'package:app_development_batch/pages/whatapp_page.dart';
import 'package:flutter/material.dart';
class InsideWhatsapp extends StatelessWidget {
  Whatsapp whatsapp;
  InsideWhatsapp({super.key,required this.whatsapp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Container(
               width: MediaQuery.of(context).size.width*0.3,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 image: DecorationImage(image: AssetImage("${whatsapp.image}"),fit:BoxFit.cover),
                       ),
                     ),
              Container(
                width: MediaQuery.of(context).size.width*0.4,
                child: Text("${whatsapp.title}",style: myStyal(20),maxLines: 1,)
              ),
            ],
          ),
        Row(
          children: [
            Icon(Icons.video_call),
            SizedBox(width: 10,),
            Icon(Icons.call),
            Icon(Icons.more_vert_outlined),
          ],
        )
        ],
      ),
      backgroundColor: Color(0xffb8b8ff),
    );
  }
}
