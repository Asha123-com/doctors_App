import 'package:app_development_batch/data/product%20list.dart';
import 'package:app_development_batch/data/product%20list1.dart';
import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/model%20class/model%20page.dart';
import 'package:app_development_batch/pages/left.dart';
import 'package:app_development_batch/pages/product_details.dart';
import 'package:flutter/material.dart';
class asha extends StatelessWidget {
  asha ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // physics:NeverScrollableScrollPhysics(),
                itemCount: 5,
              shrinkWrap: true,
              itemBuilder:(context,index){
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 180,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child:Column(
                      children: [
                    InkWell(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>ProductDetails(modelClass: properties[index])),
                        );
                        },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 160,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(image:AssetImage("${properties[index].imgUrl}"),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${properties[index].productName}",style: myStyal(20,Colors.black,FontWeight.bold),),
                        ),
                      ),
                    ),
                   ],
                    ),
                );
              }),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: properties.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return  Container(
                  margin: EdgeInsets.all(10),
                  height: 180,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(image:AssetImage("${properties[index].imgUrl}")),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${properties[index].productName}",style: myStyal(20,Colors.black,FontWeight.bold),),
                              Text("\$ ${properties[index].price}",style: myStyal(20,Colors.black,FontWeight.bold),),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Text("${properties[index].rating}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("reviews: ",style: myStyal(20,Colors.black),),
                                  Text("${properties[index].reviews}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                ],
                              ),
                              InkWell(
                                onTap:(){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>button()));
                                },
                                child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black),
                                    color: Colors.white,
                                  ),
                                  child: Center(child: Text("Next",style: myStyal(18,Colors.black),)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
                }),
          ],
        ),
      ),
    );
  }
}
