import 'package:app_development_batch/google%20font.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
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
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 310,
                width: 310,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/Doctors image/sick.jpg"),fit: BoxFit.cover),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name:",style: myStyal(20,Colors.black,FontWeight.bold),),
                      Text("Age:",style: myStyal(20,Colors.black,FontWeight.bold),),
                      Text("Location:",style: myStyal(20,Colors.black,FontWeight.bold),),
                      Text("Disease:",style: myStyal(20,Colors.black,FontWeight.bold),),
                      Text("Contact:",style: myStyal(20,Colors.black,FontWeight.bold),),
                      Text("Email:",style: myStyal(20,Colors.black,FontWeight.bold),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jonney Danil",style: myStyal(20,Colors.blue,FontWeight.bold),),
                    Text("92 Years",style: myStyal(20,Colors.blue,FontWeight.bold),),
                    Text("Bhutan",style: myStyal(20,Colors.blue,FontWeight.bold),),
                    Text("Diabetes",style: myStyal(20,Colors.blue,FontWeight.bold),),
                    Text("98867456",style: myStyal(20,Colors.blue,FontWeight.bold),),
                    Text("jonney@gmail.com",style: myStyal(20,Colors.blue,FontWeight.bold),),
                     ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
