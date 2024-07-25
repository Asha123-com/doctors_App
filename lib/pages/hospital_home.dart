import 'package:app_development_batch/data/hospital_list.dart';
import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/model%20class/hospital.dart';
import 'package:app_development_batch/pages/hospital%20details.dart';
import 'package:flutter/material.dart';
class HospitalHome extends StatelessWidget {
   HospitalHome({super.key,});

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
        backgroundColor: Color(0xffdee2e6),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allhospital.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HospitalDetails(hospital:allhospital[index],)));
                    },
                    child: Card(
                      elevation: 4,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfff8f9fa),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 250,
                                  width: MediaQuery.of(context).size.width*0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(image: AssetImage("${allhospital[index].image}"),fit: BoxFit.cover)
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("${allhospital[index].name}",style: myStyal(22,Colors.black,FontWeight.bold),maxLines: 2,),
                                        SizedBox(height: 20,),
                                        Text("${allhospital[index].location}",style: myStyal(18),),
                                        SizedBox(height: 10,),
                                        Text("${allhospital[index].rating}")
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}



