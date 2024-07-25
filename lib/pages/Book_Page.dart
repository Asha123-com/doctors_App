import 'package:app_development_batch/data/book_list.dart';
import 'package:app_development_batch/data/product%20list.dart';
import 'package:app_development_batch/pages/book_details.dart';
import 'package:app_development_batch/pages/bookbutton.dart';
import 'package:flutter/material.dart';
class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Store"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body:SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 4,
                  shrinkWrap: true,
                   // physics: NeverScrollableScrollPhysics(),
                 scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>bookdetails (modelClass: allBooks[index],) ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage("${allBooks[index].bookimage}"),fit: BoxFit.cover),
                        color: Colors.red,
                      ),
                    ),
                  );
                  },
              ),
            ),
            ListView.builder(
              itemCount: allBooks.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // image: DecorationImage(image: AssetImage("${allBooks[index].bookimage}"),fit: BoxFit.cover),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 240,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage("${allBooks[index].bookimage}"),fit: BoxFit.cover),
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: [
                              Text("${allBooks[index].BookName}",style: TextStyle(fontSize: 15,color: Colors.black),),
                              Text("${allBooks[index].author}",style: TextStyle(fontSize: 15,color: Colors.black),),
                              // Icon(Icons.star,color: Colors.yellow,),
                              // Icon(Icons.star,color: Colors.yellow,),
                              // Icon(Icons.star,color: Colors.yellow,),
                              // Icon(Icons.star,color: Colors.yellow,),
                              Text("${allBooks[index].bookrating}",style: TextStyle(fontSize: 15,color: Colors.black),),
                              Row(
                                children: [
                                  Text("views:",style: TextStyle(fontSize: 20,color: Colors.black),),
                                  Text("${allBooks[index].bookreviews}",style: TextStyle(fontSize: 15,color: Colors.black),),
                                ],
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Bookbutton()),);
                                },
                                child: Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                  ),
                                  child: Center(child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.white),)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      )
    );
  }
}
