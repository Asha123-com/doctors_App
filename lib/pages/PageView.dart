import 'package:app_development_batch/data/doctor_list.dart';
import 'package:flutter/material.dart';
class Pageview extends StatelessWidget {
  const Pageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 200,
        child: PageView.builder(
          itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
            return Card(
              elevation: 4,
              child: Container(
                margin: EdgeInsets.all(8),
                // color: Colors.red,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("${allDocs[index].image}"),fit: BoxFit.cover),
                ),
              ),
            );
            }),
      ),
    );
  }
}
