import 'package:flutter/material.dart';
import 'package:food_delivery_app_design/ui/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset("assets/registerbackground3.jpg",
                fit: BoxFit.cover,
                
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: InkWell(
                  child: Text("Log In",
                  style: TextStyle(color: Colors.white.withOpacity(0.7)),
                  ),onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  }
                ))
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.white70,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Lets Start making \ngood meals",
                        style: TextStyle(fontSize: 30,
                        color: Color.fromARGB(255, 196, 150, 72).withOpacity(0.5)
                        ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: EdgeInsets.all(10
                      ),
                      child: Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Your Email'
                        ),
                      )),
                    ),
                     SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Expanded(child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Your Password'
                        ),
                      )),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){}, child: Text('Create Account'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 40),
                      backgroundColor:  Color.fromARGB(255, 196, 150, 72).withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),),
                    SizedBox(height: 6,),
                     ElevatedButton(onPressed: (){}, child: Text('Sign up with facebook',
                     style: TextStyle(
                      color:  Color.fromARGB(255, 196, 150, 72).withOpacity(0.5)
                     ),
                     ),
                      style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 40),
                      backgroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Color.fromARGB(255, 196, 150, 72).withOpacity(0.5))
                      )
                    ),),
                     SizedBox(height: 50,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Terms of Use',
                        style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(' and '),
                        Text('Privacy Policy',
                        style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                     )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}