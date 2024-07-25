import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/model%20class/medicine.dart';
import 'package:app_development_batch/pages/pharmacy%20home.dart';
import 'package:flutter/material.dart';
class MedicineDetails extends StatelessWidget {
  Medicine medicine;
  List tablet;
   MedicineDetails({super.key,required this.medicine,required this.tablet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9f7f3),
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
      backgroundColor: Color(0xffedede9),
      body: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(builder)=>PharmacyHome(pharmacy: tablet,)));
        },
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(6),
                    height: 300,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("${medicine.image}"),fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Text("${medicine.name}",style: myStyal(25,Colors.black,FontWeight.bold),),
              Text("${medicine.rating}",style: myStyal(20,Colors.black,FontWeight.bold),),
              Text("${medicine.location}",style: myStyal(20,Colors.black,),),
              Text("${medicine.number}",style: myStyal(20,Colors.black,),),
              SizedBox(
                height: 50,
                width: 60,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryColor
                  ),
                  child: Center(child: Text("Buy Now",style: myStyal(20,Colors.white,FontWeight.bold))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
