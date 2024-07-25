// import 'package:app_development_batch/data/product%20list.dart';
// import 'package:flutter/material.dart';
// class homepage extends StatelessWidget {
//   const homepage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Amazon"),
//         centerTitle: true,
//         backgroundColor: Colors.yellow,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ListView.builder(
//               itemCount: allProducts.length,
//                 shrinkWrap: true,
//                 itemBuilder: (context,index){
//                 return Container(
//                     margin: EdgeInsets.all(10),
//                     color: Colors.red,
//                     child: Column(
//                       children: [
//                         Text("${allProducts[index].productName}"),
//                         Text("${allProducts[index].reviews}"),
//                         Container(
//                           height: 100,
//                           width: 100,
//                           child: Image.asset("${allProducts[index].imgUrl}",fit: BoxFit.contain,),
//                         ),
//                       ],
//                     ),
//                   );
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }
