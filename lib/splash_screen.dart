import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(onTap: () {
              Navigator.pushNamed(context, "home");
            },child: Text("Logo",style: TextStyle(color: Colors.black,fontSize: 30,),)),
          ],
        ),
      ),
    );
  }
}
