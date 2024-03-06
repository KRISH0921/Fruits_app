import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
   const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    List data= ModalRoute.of(context)!.settings.arguments as List;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detailpage"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              Text("${data[0]}",style: TextStyle(fontSize:60),),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${data[1]}",style: TextStyle(fontSize: 25),),
                    Text("${data[2]}",style: TextStyle(fontSize: 20),),
                    Text("${data[3]}",style: TextStyle(fontSize: 16),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
