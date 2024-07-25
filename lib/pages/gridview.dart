import 'package:app_development_batch/google%20font.dart';
import 'package:flutter/material.dart';
class PraticeGridview extends StatelessWidget {
  const PraticeGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pratice GridView",style: myStyal(20,Colors.black,FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 0.8,
                ),
              itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.red,
                    height: 150,
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}

