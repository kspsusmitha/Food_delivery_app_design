import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isSwitched = false;  

  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;  
         
      });  
      print('Switch Button is ON');  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;  
      
      });  
      print('Switch Button is OFF');  
    }  
  }  

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
                child: Text("Sign In",
                style: TextStyle(color: Colors.white.withOpacity(0.7)),
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
                    Padding(padding: EdgeInsets.all(08),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                     [
                      Row(
                        children: [
                          Switch( 
                            onChanged: toggleSwitch,  
                            value: isSwitched,
                            activeColor:Color.fromARGB(255, 196, 150, 72).withOpacity(0.5),   ),
                          Text("Remember"),
                        ],
                      ),
                      
                      Text('Forgot?')
                    ]),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){}, child: Text('Log In'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 40),
                      backgroundColor:  Color.fromARGB(255, 196, 150, 72).withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),),
                    SizedBox(height: 6,),
                
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