import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/model%20class/hospital.dart';
import 'package:flutter/material.dart';
class HospitalDetails extends StatelessWidget {
  Hospital hospital;
   HospitalDetails({super.key,required this.hospital});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        centerTitle: true,
        backgroundColor: Color(0xffedf6f9),
      ),
      backgroundColor: Color(0xfff9f7f3),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("${hospital.name}",style: myStyal(30,Colors.black,FontWeight.bold),),
                SizedBox(height: 10,),
                Card(
                    elevation: 9,
                    child: Image(image: AssetImage("${hospital.image}"),fit: BoxFit.cover,)),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("${hospital.brief}",style: myStyal(24),),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${hospital.rating}",style: myStyal(23),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.call,size: 20, color: Colors.green,),
                          SizedBox(width: 10,),
                          Text("${hospital.number}",style: myStyal(23),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("Doctors: ${hospital.doctors}",style: myStyal(23),),
                      SizedBox(height: 20,),
                      Text("Patient: ${hospital.Patient}",style: myStyal(23),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on_outlined,size: 20,color: Colors.blue,),
                          SizedBox(width: 10,),
                          Text("Location: ${hospital.location}",style: myStyal(23),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




