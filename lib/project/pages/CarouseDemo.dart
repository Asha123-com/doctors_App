import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CarouseDemo extends StatefulWidget {
  const CarouseDemo({super.key});

  @override
  State<CarouseDemo> createState() => _CarouseDemoState();
}

class _CarouseDemoState extends State<CarouseDemo> {
  final List<String> imglist = [
    "assets/image/tentacle of love.jpg",
    "assets/image/tentacle of love.jpg",
    "assets/image/tentacle of love.jpg",
    "assets/image/tentacle of love.jpg",
    "assets/image/tentacle of love.jpg",
    "assets/image/tentacle of love.jpg",
  ];
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: imglist.map((e) {
                return Image.asset(e);
              }).toList(),
          options: CarouselOptions(
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            enlargeCenterPage:true,
            enlargeFactor : 0.3,
            onPageChanged:(_value,_){
              setState(() {
                _currentPage = _value;
              });
             }
             ),
            ),
            buildIndicator(),
          ],
        ),
      ),
    );
  }
  buildIndicator(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i =0; i < imglist.length;i++)
          Container(
            margin: EdgeInsets.all(5),
            height: 7,
            width: i ==_currentPage ? 35 : 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: i ==_currentPage ? Colors.blue : Colors.grey,
            ),
          )
      ],
    );
  }
}
