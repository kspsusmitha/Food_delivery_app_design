import 'package:flutter/material.dart';


class introduced extends StatelessWidget {
  const introduced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/doughnutwallpaper2.jpg',
            fit:BoxFit.fill,
            ),
          ),
          Positioned(
            top: 250,
            bottom: 250,
            left: 50,
            right: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7)
              ),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  
                        Text("Good Food",style: TextStyle(
                fontSize: 33,color: Colors.orange.shade700.withOpacity(0.5)
                        ),),

                        
                        Text("  Nutritionally balanced, easy \n to cook recipies. Quality fresh\n             local ingrededients",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 20
                        ),
                        ),

                        ElevatedButton(onPressed: (){}, child: Text("Create Account",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),  
                        ),
                         minimumSize: Size(150,40)
                        ),
                        
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have account?"),
                            Text("Log In",
                            style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5)
                            ),
                            )
                          ],
                        )
                  ],
                ),
              ),

            ))
        ],
      ),
    );
  }
}