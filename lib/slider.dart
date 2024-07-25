import 'package:flutter/material.dart';
class cloud extends StatefulWidget {
  const cloud({super.key});

  @override
  State<cloud> createState() => _cloudState();
}

class _cloudState extends State<cloud> {
  double _value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playing Now",style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold,),),
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,),),
        actions: [
          Icon(Icons.queue_music_outlined,),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
              image: DecorationImage(image: NetworkImage("https://static.vecteezy.com/system/resources/previews/006/972/721/large_2x/beauty-sweet-pastel-pink-red-colorful-with-fluffy-clouds-on-sky-multi-color-rainbow-image-abstract-fantasy-growing-light-photo.jpg"),fit: BoxFit.cover,)
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cloud 95C",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,),),
              Icon(Icons.favorite,color: Colors.red,),
            ],
          ),
          Text("Flame",style: TextStyle(color: Colors.black26,fontSize: 20),),
          Slider(value: _value,max: 100, onChanged: (double val){
            setState(() {
              _value=val;
            });
         }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("3:42",style: TextStyle(color: Colors.black26,fontSize: 20),),
              Text("4:53",style: TextStyle(color: Colors.black26,fontSize: 20),),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
