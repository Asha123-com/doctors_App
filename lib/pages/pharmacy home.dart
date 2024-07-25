import 'package:app_development_batch/data/pharmacy_list.dart';
import 'package:app_development_batch/google%20font.dart';
import 'package:flutter/material.dart';
class PharmacyHome extends StatelessWidget {
  List pharmacy;
  PharmacyHome({super.key,required this.pharmacy});

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
        backgroundColor: Color(0xffedf2f4),
      ),
      backgroundColor: Color(0xfff4f3ee),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
           ListView.builder(
             physics: NeverScrollableScrollPhysics(),
             itemCount: 6,
               shrinkWrap: true,
               itemBuilder: (context,index){
               return Container(
                 margin: EdgeInsets.all(10),
                 height: 150,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Container(
                   height: 250,
                   width: 150,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           Container(
                             height: 100,
                             width: MediaQuery.of(context).size.width*0.3,
                             decoration: BoxDecoration(
                               shape: BoxShape.rectangle,
                               image: DecorationImage(image: AssetImage("${pharmacy[index].image}"),fit: BoxFit.cover),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.all(20),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("${pharmacy[index].name}",style: myStyal(28,Colors.black,FontWeight.bold),),
                                 SizedBox(height: 4,),
                                 Text("\$ ${pharmacy[index].price}",style: myStyal(18,Colors.black,FontWeight.bold),),
                                 SizedBox(height: 4,),
                                 Text("${pharmacy[index].rating}",style: myStyal(18,Colors.black,FontWeight.bold),),
                               ],
                             ),
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
               );
               }),
          ],
        ),
      ),
    );
  }
}
