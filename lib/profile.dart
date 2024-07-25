import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class resume extends StatelessWidget {
  const resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Align(alignment: Alignment.center,),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  // borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25),topRight: Radius.circular(25) ),
                  color: Colors.yellow,
                  image:DecorationImage(image: AssetImage("assets/image/resume.jpg")),
                ),
              ),
              SizedBox(height: 20,),
              Text("Asha subba",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text("Application Developer",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width*50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Project',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            Text('Programming Languages'),
                            Text('Stage Management,'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Project',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            Text('Object Oreanted Program'),
                            Text('Operating Systems,'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2,color: Colors.black,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25),topRight: Radius.circular(25) ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text('Education',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
                        SizedBox(height: 5,),
                        Text('Flutter-2024',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text('Certicate in tally course-2023',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text('MCS 2022',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),topRight: Radius.circular(20),),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text('Interest',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
                        SizedBox(height: 5,),
                        Text('Travelling',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text('Listening Music',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Text('Exploring',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height*0.19,
                width: MediaQuery.of(context).size.width*0.90,
                decoration: BoxDecoration(border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25),topRight: Radius.circular(25),),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Contact',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text('Mail: ashasubba179@gmail.com'),
                    Text('Github: https://github.com/ashasubba123/asha123subba'),
                    Text('Linkedin: https://www.linkedin.com/in/asha-subba-937853313/'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
