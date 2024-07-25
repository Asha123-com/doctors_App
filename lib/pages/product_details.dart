import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/model%20class/model1.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatelessWidget {
  ModelClass modelClass;
  ProductDetails({super.key, required this.modelClass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${modelClass.productName}",style: myStyal(30,Colors.black,FontWeight.bold),),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Image.asset("${modelClass.imgUrl}"),
          SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("\$ ${modelClass.price}",style: myStyal(20,Colors.black,FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Text("${modelClass.rating}",style: myStyal(20,Colors.white,FontWeight.bold),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("views:1000",style: myStyal(20,Colors.black,),),
                  Text("${modelClass.reviews}",style: myStyal(20,Colors.white,FontWeight.bold),),
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: Center(child: Text("Buy",style: myStyal(20,Colors.black,FontWeight.bold,),)),
          )
        ],
      ),
    );
  }
}
