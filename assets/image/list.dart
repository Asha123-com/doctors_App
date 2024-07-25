// import 'package:app_development_batch/google%20font.dart';
// import 'package:app_development_batch/model%20class/model%20page.dart';
// import 'package:flutter/material.dart';
// class ProductDetails extends StatelessWidget {
//   ModelClass modelClass;
//   ProductDetails({super.key, required this.modelClass});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("${modelClass.productName}",style: myStyal(30,Colors.black,FontWeight.bold),),
//         centerTitle: true,
//       ),
//       body:Column(
//         children: [
//           Image.asset("${modelClass.imgUrl}"),
//           SizedBox(
//             height: 30,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("\$ ${modelClass.price}",style: myStyal(20,Colors.black,FontWeight.bold),),
//               Row(
//                 children: [
//                   Icon(Icons.star,color: Colors.yellow,),
//                   Icon(Icons.star,color: Colors.yellow,),
//                   Icon(Icons.star,color: Colors.yellow,),
//                   Icon(Icons.star,color: Colors.yellow,),
//                   Icon(Icons.star,color: Colors.yellow,),
//                   Text("${modelClass.rating}",style: myStyal(20,Colors.white,FontWeight.bold),),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text("reviews: ",style: myStyal(20,Colors.black,),),
//                   Text("${modelClass.reviews}",style: myStyal(20,Colors.white,FontWeight.bold),),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
