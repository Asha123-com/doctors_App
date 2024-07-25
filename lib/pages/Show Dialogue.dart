import 'package:app_development_batch/google%20font.dart';
import 'package:flutter/material.dart';
class Show extends StatelessWidget {
  const Show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width*0.8,
                color: Colors.deepOrange,
                onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Do you want quit?"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Yes")),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Yes")),
                    ],
                  );
                });
                },
                 child:Text("Button",style: myStyal(20,Colors.yellow,FontWeight.bold),),
          )
         ],
        ),
      ),
    );
  }
}
