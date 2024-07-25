import 'package:app_development_batch/data/medicine_list.dart';
import 'package:app_development_batch/data/pharmacy_list.dart';
import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/pages/medicine%20details.dart';
import 'package:flutter/material.dart';
class MedicineHome extends StatelessWidget {
   MedicineHome({super.key});

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
      ),
      body:SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: shop.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:(builder)=>MedicineDetails(medicine:shop[index],tablet: allPharmacy[index],)));
                  },
                  child: Card(
                    margin: EdgeInsets.all(10),
                    elevation: 4,
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                         color: Color(0xffedf2f4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 250,
                                width: MediaQuery.of(context).size.width*0.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(image: AssetImage("${shop[index].image}"),fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width*0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${shop[index].name}",style: myStyal(22,Colors.black,FontWeight.bold),),
                                    SizedBox(height: 5,),
                                    Text("${shop[index].location}",style: myStyal(18,Colors.black,FontWeight.bold),),
                                    SizedBox(height: 5,),
                                    Text("${shop[index].rating}",style: myStyal(18,Colors.black,FontWeight.bold),),
                                  ],
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
      ) ,
    );
  }
}
