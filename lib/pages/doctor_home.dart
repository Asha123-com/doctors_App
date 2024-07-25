import 'package:app_development_batch/data/hospital_list.dart';
import 'package:app_development_batch/data/doctor_list.dart';
import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/pages/Covid_home.dart';
import 'package:app_development_batch/pages/ambulance_home.dart';
import 'package:app_development_batch/pages/doctors_details.dart';
import 'package:app_development_batch/pages/hospital_home.dart';
import 'package:app_development_batch/pages/medicine_home.dart';
import 'package:app_development_batch/pages/profile.dart';
import 'package:flutter/material.dart';


class DoctorHome extends StatelessWidget {
  DoctorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,size:30,),
                    RichText(
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
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Profile()));
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: primaryColor),
                            image: DecorationImage(image: AssetImage("assets/Doctors image/sick.jpg"),fit: BoxFit.cover,)
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.28,
                        width: MediaQuery.of(context).size.width*0.5,
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                            image: DecorationImage(image: AssetImage("assets/Doctors image/doctors.jpg"),fit: BoxFit.cover)
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.44,
                        padding: EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Stay Healthy!",style: myStyal(24,Colors.black,FontWeight.bold),),
                            Text("Stay Safe!",style: myStyal(20,Colors.black,FontWeight.bold),maxLines: 1,),
                            Text("We are here to help you 24/7 with the best treatment in the world",style: myStyal(16,Colors.black),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.video_call,size: 25,color: primaryColor,),
                                Text("Meet Online",style: myStyal(20,secondaryColor,FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Services",style: myStyal(25,primaryColor,FontWeight.bold),),
                    Text("See All",style: myStyal(18,Colors.black),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CovidHome()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/doctor icons/virus.gif"),
                          Text("Covid-19",style: myStyal(16,Colors.black),),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>ambulance()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/doctor icons/ambulance.gif"),
                          Text("Ambulance",style: myStyal(16,Colors.black),),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HospitalHome()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/doctor icons/hospital.gif"),
                          Text("Hospital",style: myStyal(16,Colors.black),),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicineHome()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/doctor icons/medicine.gif"),
                          Text("Medicine",style: myStyal(16,Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Rated Doctors",style: myStyal(25,primaryColor,FontWeight.bold),),
                    Text("See All",style: myStyal(18,Colors.black),),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: allDocs.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>DoctorsDetails(doctorModel: allDocs[index],)));
                      },
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightBlueAccent.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              children: [
                                Hero(
                                  tag:"${allDocs[index].name}",
                                  child: CircleAvatar(
                                    maxRadius: 50,
                                    backgroundColor: Colors.white70,
                                    backgroundImage: AssetImage("${allDocs[index].image}"),
                                  ),
                                ),
                                Text("${allDocs[index].name}",style: myStyal(20,Colors.black,FontWeight.bold),textAlign: TextAlign.center,),
                                Text("${allDocs[index].speciality}",style: myStyal(16,Colors.black),),
                                Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white
                                    ),
                                    child: Center(child: Text("${allDocs[index].rating}"))),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
