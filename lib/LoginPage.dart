import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:layout1/SignUp.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              height: 100,
              width: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/sobat.png'),
                ),

            ),
            Container(
              height: 40,
              width: 350,
              margin: EdgeInsets.all(10),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child:Text("Existing",style: TextStyle(color: Colors.purple),),
                            ),

                         Padding(
                            padding: EdgeInsets.only(right: 10),
                              child:ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                                  },
                                  child:Text("New User"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.purple,
                                    foregroundColor: Colors.white
                                  ),

                              )
                          ),
                         
                      ],
                    ),
              ),

            Stack(
              children: [
               Container(
                width: 400,
                height: 170,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                contentPadding:EdgeInsets.symmetric(vertical: 2) ,
                                hintText: "Username",
                                suffixIcon: FaIcon(FontAwesomeIcons.user)
              
                              ),
              
                            ),
                            TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                  contentPadding:EdgeInsets.symmetric(vertical: 2) ,
                                  hintText: "Password",
                                  suffixIcon: Icon(Icons.lock),

              
                              ),
              
                            ),
                          ],
              
                        ),
              
              
              
                ),
              
              ),
                 Positioned(
                   bottom: 1,
                     left: 170,
                     child: ElevatedButton(
                         onPressed: (){},
                         child:Text("Login"),
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.purple,
                           foregroundColor: Colors.white
                         ),
                     )
                 )
            ]
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child:TextButton(onPressed: (){},
                  child: Text("Forget Password?",style: TextStyle(color: Colors.black87),)
              ),
            ),

              Padding(
              padding: EdgeInsets.only(top: 17),
                child: Text("--------------OR--------------")
            ),
            
            Container(
              width: 70,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaIcon(FontAwesomeIcons.facebook),
                  FaIcon(FontAwesomeIcons.google)
                ],
              ),
            )




            
            

          ],
        ),
      ),
    );
  }
}