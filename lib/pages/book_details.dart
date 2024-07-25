import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/model%20class/book_model.dart';
import 'package:flutter/material.dart';
class bookdetails extends StatelessWidget {
  BookModel modelClass;
   bookdetails({super.key,required this.modelClass });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${modelClass.BookName}",style: myStyal(20,Colors.black,FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.9,
              height: 350,
              child: Image.asset("${modelClass.bookimage}")),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("\$. ${modelClass.bookprice}",style: myStyal(20,Colors.black,),),
              Text("${modelClass.bookrating}",style: myStyal(20,Colors.black,),),
              Text("${modelClass.author}",style: myStyal(20,Colors.black,),),
              Text("Views: ${modelClass.bookreviews}",style: myStyal(20,Colors.black,),),
              Text("${modelClass.genre}",style: myStyal(20,Colors.black,),),
              Text("${modelClass.publishDate}",style: myStyal(20,Colors.black,),),
              Text("${modelClass.brief}",style: myStyal(20,Colors.black,),),
            ],
          ),
        ],
      ),
    );
  }
}
