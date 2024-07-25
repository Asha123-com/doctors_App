import 'package:flutter/material.dart';
class CustomButtons extends StatefulWidget {
  const CustomButtons({super.key});

  @override
  State<CustomButtons> createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  Color color1=Colors.pink;
  Color color2=Colors.red;
  bool pressed= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pressed?color1:color2,
      appBar: AppBar(
        title: Text("Color Change"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              MaterialButton(
                onPressed: (){
                print("Hi");
                  if(pressed==false){
                    pressed=true;
                    setState(() {
                    });
                  }
                  else {
                    pressed = false;
                    setState(()
                    {});
                  }
                  },
                  height:70,
                  minWidth: 200,
                color: Colors.orange,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Press",style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
     );
  }
}


