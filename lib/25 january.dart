import 'package:app_development_batch/google%20font.dart';
import 'package:flutter/material.dart';
class tempature extends StatelessWidget {
  const tempature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0aaff),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 760,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.blue,
                      image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1176309871/vector/winter-snowy-landscape-with-mountains-and-wood-log-country-house-spruces-firs-snowy-nature.jpg?s=1024x1024&w=is&k=20&c=rcLyF9QaLUOKzm_ES7Igtn9QtsURoil8uhrGwnu_pzs="),fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("25 January,Wednesday",style: myStyal(20,Colors.white,FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("-10\u00B0C",style: myStyal(120,Colors.white,FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 130,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Irkutsk",style: myStyal(30,Colors.black,FontWeight.bold),),
                              Icon(Icons.arrow_forward_sharp),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(7),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffa06cd5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.wind_power_sharp,color: Colors.white,),
                              Text("Wind",style: myStyal(17,Colors.white),),
                              Text("5-8km/h",style: myStyal(17,Colors.white),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(7),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffa06cd5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.thermostat,color: Colors.white,),
                              Text("Pressure",style: myStyal(17,Colors.white),),
                              Text("1000MB",style: myStyal(19,Colors.white),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(7),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffa06cd5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.water_drop_outlined,color: Colors.white,),
                              Text("Humidity",style: myStyal(17,Colors.white),),
                              Text("51%",style: myStyal(20,Colors.white),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.withOpacity(0.2)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("Now",style: myStyal(20,Colors.white),),
                                  Icon(Icons.cloud,color: Colors.white,),
                                  Text("-10\u00B0",style: myStyal(20,Colors.white),),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("3AM",style: myStyal(20,Colors.white),),
                                  Icon(Icons.cloud,color: Colors.white,),
                                  Text("-23\u00B0",style: myStyal(20,Colors.white),),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("4AM",style: myStyal(20,Colors.white),),
                                  Icon(Icons.cloud,color: Colors.white,),
                                  Text("-22\u00B0",style: myStyal(20,Colors.white),),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("5AM",style: myStyal(20,Colors.white),),
                                  Icon(Icons.cloud,color: Colors.white,),
                                  Text("-14\u00B0",style: myStyal(20,Colors.white),),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("6AM",style: myStyal(20,Colors.white),),
                                  Icon(Icons.cloudy_snowing,color: Colors.white,),
                                  Text("-3\u00B0",style: myStyal(20,Colors.white),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 85,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.sunny,color: Colors.white.withOpacity(0.5),size: 35,),
                              Icon(Icons.compass_calibration,color: Colors.white,size: 35,),
                              Icon(Icons.hail_sharp,color: Colors.white.withOpacity(0.5),size: 35,),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 4,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
