import 'package:flutter/material.dart';
class ButtonChair extends StatelessWidget {
  const ButtonChair({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back) ,),
        actions: [
          Icon(Icons.favorite_border,size: 20,),
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 260,
                width: 260,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-vector/realistic-icon-modern-blue-armchair-with-wooden-legs-vector-illustration_1284-66933.jpg?size=338&ext=jpg&ga=GA1.1.1546980028.1719705600&semt=ais_user",)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:100 ,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-vector/chair-realistic-illustration_1284-9507.jpg?size=338&ext=jpg&ga=GA1.1.553209589.1715040000&semt=ais",)),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/furniture-modern-studio-lifestyle-green_1122-1837.jpg?1",)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.star,size: 30,color: Colors.deepOrange,),
                Text('4.8',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("145 reviews",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Leset Galant',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height:20 ,
                      width: 20,
                      decoration: BoxDecoration(
                        // color: Colors.lightGreen,
                        border: Border.all(color: Colors.lightBlueAccent,width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height:20 ,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(color: Colors.white,width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height:20 ,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text("A chair is a type of seat, typically designed for one person and consisting of one or more legs, a flat or slightly angled seat and a back-rest."),
            SizedBox(height: 50,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("\$ 64.00",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                    ],
                  ),
                  Row(
                    children: [
                      MaterialButton(onPressed: (){},
                        minWidth: 200,
                        color: Colors.black,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        child: Text('Add to cart',style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
