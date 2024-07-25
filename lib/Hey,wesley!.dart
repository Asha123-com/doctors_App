import 'package:app_development_batch/anime.dart';
import 'package:app_development_batch/google%20font.dart';
import 'package:flutter/material.dart';
class Hey extends StatelessWidget {
  const Hey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7ecef),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 760,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffe2eafc),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("June 28th",style: myStyal(20,Colors.grey,),),
                              Text("Hey, Wesley",style: myStyal(30,Colors.black,FontWeight.bold),),
                            ],
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue,
                                image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu51XqkERN4KCU2HF526phPswwmMY9qjexFA&s"),fit: BoxFit.cover)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 110,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue
                            ),
                            child: Column(
                              children: [
                                Text("13",style: myStyal(50,Colors.white,FontWeight.bold)),
                                Text("Active",style: myStyal(20,Colors.white),),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text("15",style: myStyal(50,Colors.black,FontWeight.bold),),
                              Text("Pending",style: myStyal(20,Colors.grey),),
                            ],
                          ),
                          Column(
                            children: [
                              Text("21",style: myStyal(50,Colors.black,FontWeight.bold),),
                              Text("Completed",style: myStyal(20,Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(20),
              height: 390,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzEuS2okNuDZVc3CmMXvWCTdDzEBPSqxz62w&s"),fit: BoxFit.cover)
              ),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 90,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Text("12",style: myStyal(45,Colors.black,FontWeight.bold),),
                          Text("Enrolled",style: myStyal(15,Colors.black,),)
                        ],
                      ),
                    ),
                    SizedBox(height: 70,),
                    Container(
                      height: 210,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.withOpacity(0.8),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("How to grow your",style: myStyal(25,Colors.white,FontWeight.bold),),
                                Icon(Icons.favorite_border_rounded,size: 45,color: Colors.white,),
                              ],
                            ),
                            Text("Facebook Page",style: myStyal(25,Colors.white,FontWeight.bold),),
                            Text("Follow these easy and",style: myStyal(16,Colors.white),),
                            Text("Simple steps",style: myStyal(16,Colors.white),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 3,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      height: 3,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white.withOpacity(0.19),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.white)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Enroll",style: myStyal(20,Colors.white,FontWeight.bold),),
                                            Icon(Icons.arrow_forward_sharp,size: 15,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (builder)=>anime()),
                );
              },
              child: Container(
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Icon(Icons.arrow_forward),
              ),
            )
          ],
        ),
      ),
    );
  }
}
