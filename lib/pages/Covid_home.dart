import 'package:app_development_batch/data/hospital_list.dart';
import 'package:app_development_batch/google%20font.dart';
import 'package:flutter/material.dart';
class CovidHome extends StatelessWidget {
  const CovidHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:RichText(
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage("assets/Doctors image/covid.jpg")),
              Text("Covid-19",style: myStyal(25,Colors.black,FontWeight.bold,)),
              Container(
                height: 20,
              ),
              Text(""),
              Text("The coronavirus disease 2019 (COVID-19) pandemic is a global outbreak of coronavirus – an infectious disease caused by the severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2)",style: myStyal(20,Colors.black,),),
              Text("Stay Healthy!",style: myStyal(25,Colors.black,FontWeight.bold,)),
              Image.asset("assets/doctor icons/virus.gif"),
              Image.asset("assets/Doctors image/hand.jpg"),
              SizedBox(
                height: 20,
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
