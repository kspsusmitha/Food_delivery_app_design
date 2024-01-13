import 'package:flutter/material.dart';
import 'package:food_delivery_app_design/ui/intro.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(child: Image.asset('assets/splashwallpaper1.jpg',
          fit: BoxFit.fill,
          )),
          Positioned(
            right: 25,
            left: 25,
            top: 150,
            child: Column(
            children: [
              Text("Good Food",
              style: TextStyle(
                fontSize: 46,
                fontWeight: FontWeight.bold,
               color: Colors.black54
              ),
              ),
              Text("Deliciously Simple",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54
              ),
              )
            ],
          )),
          Positioned(
            left: 50,
            right: 50,
            bottom: 150,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>introduced()));
            }, child: Text('Start Cooking'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade200.withOpacity(0.5),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            ))
        ],
      ),
    );
  }
}