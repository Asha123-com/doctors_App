import 'package:app_development_batch/data/whatapp_list.dart';
import 'package:app_development_batch/google%20font.dart';
import 'package:app_development_batch/model%20class/whatapp_model.dart';
import 'package:app_development_batch/pages/inside_whatsapp.dart';
import 'package:flutter/material.dart';
class whatapp extends StatelessWidget {
   whatapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatapp",style: myStyal(30, Colors.green, FontWeight.bold),),
        actions: [
          Icon(Icons.camera_alt_outlined),
          Icon(Icons.search),
          Icon(Icons.more_vert_outlined),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context,index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) =>
                              InsideWhatsapp(whatsapp: App[index],)),);
                    },
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 300,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("${App[index].image}"),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                            ),
                          ),
                          title: Text("${App[index].title}", style: TextStyle(fontSize: 20, color: Colors.black),),
                          subtitle: Text("${App[index].subtitle}", style: TextStyle(fontSize: 15, color: Colors.black),),
                          trailing: Text("${App[index].date}", style: TextStyle(fontSize: 15, color: Colors.black),),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.black,
                        )
                      ],
                    ),
                  );
                }),
           ]
        ),
      ),
    );
  }
}
