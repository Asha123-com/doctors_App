import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/model%20class/doctor_model.dart';
import 'package:app_development_batch/pages/doctor_home.dart';
import 'package:flutter/material.dart';

class DoctorsDetails extends StatelessWidget {
  DoctorModel doctorModel;
  DoctorsDetails({super.key,required this.doctorModel});

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
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Hero(
              tag: "${doctorModel.name}",
                child: Image(image: AssetImage("${doctorModel.image}"))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("${doctorModel.name}",style: myStyal(20,Colors.black,FontWeight.bold),),
                              Text("${doctorModel.speciality}",style: myStyal(18,Colors.black),),
                            ],
                          ),
                          Text("\$ ${doctorModel.payment}",style: myStyal(18,secondaryColor,FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("About Doctor",style: myStyal(20,primaryColor,FontWeight.bold),),
                      Text("${doctorModel.aboutDoc}",style: myStyal(15,Colors.black),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            margin: EdgeInsets.all(5),
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.08,
                              width: MediaQuery.of(context).size.width*0.29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Patients"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.person,size: 22,color: primaryColor,),
                                      Text("${doctorModel.patientNo}",style: myStyal(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(5),
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.08,
                              width: MediaQuery.of(context).size.width*0.29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Experince"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.shopping_bag,size: 20,color: primaryColor,),
                                      Text("${doctorModel.experience}",style: myStyal(15,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.all(5),
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Rating"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("${doctorModel.rating}",style: myStyal(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("Available Time",style: myStyal(20,primaryColor,FontWeight.bold),),
                      SizedBox(
                        height: 60,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: doctorModel.appointmentDays.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return Card(
                                elevation: 4,
                                child: Container(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width*0.20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("${doctorModel.appointmentDays[index]}",style: myStyal(16,primaryColor,FontWeight.bold),),
                                        Text("${doctorModel.appointmentTimes[index]}",style: myStyal(14,primaryColor,FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                      Center(
                        child: MaterialButton(
                          color: primaryColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          height: MediaQuery.of(context).size.height*0.05,
                          minWidth: MediaQuery.of(context).size.width*0.08,
                          onPressed: (){},
                          child: Text("Make an Appointment",style: myStyal(20,Colors.white,FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
