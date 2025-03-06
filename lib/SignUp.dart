import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:layout1/LoginPage.dart';

class SignUpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Complete Background
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.purple,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            //Image
            Container(
              width: 100,
                height: 100,
                child:CircleAvatar(
                  backgroundImage: AssetImage("assets/images/sobat.png"),
                )
            ),

            //Existing Or new User
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),

              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text("Existing"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white
                      ),

                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 20),
                      child: Text("New User",style: TextStyle(color: Colors.purple),)
                  ),

                ],
              ) ,

            ),

            //Foam
          
                 Stack(
                   children: [
                       Container(
                           width: 400,
                           height: 300,
                           margin: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(30),
                               color: Colors.white
                           ),

                           child: Padding(
                               padding: EdgeInsets.all(20),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   //username
                                   TextField(
                                     decoration: InputDecoration(
                                         hintText: "Username",
                                         suffixIcon: FaIcon(FontAwesomeIcons.user)
                                     ),
                                   ),

                                   //Email
                                   TextField(
                                     keyboardType: TextInputType.emailAddress,
                                     decoration: InputDecoration(
                                         hintText: "Email",
                                         suffixIcon: Icon(Icons.mail)
                                     ),
                                   ),

                                   //Password
                                   TextField(
                                     obscureText: true,
                                     obscuringCharacter: "*",
                                     decoration: InputDecoration(
                                         hintText: "Password",
                                         suffixIcon: Icon(Icons.lock)
                                     ),
                                   ),

                                   //confirm Password
                                   Padding(
                                     padding: EdgeInsets.only(bottom: 15),
                                     child: TextField(
                                       obscureText: true,
                                       obscuringCharacter: "*",
                                       decoration: InputDecoration(
                                           hintText: "Confirm Password",
                                           suffixIcon: Icon(Icons.lock)
                                       ),
                                     ),
                                   ),

                                 ],
                               )

                           )

                       ),
                     Positioned(
                       bottom: -7,
                       left: 170,
                       child: ElevatedButton(
                           onPressed: (){},
                           child: Text("SignUp"),
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.purple,
                           foregroundColor: Colors.white
                         ),

                       ),

                     )

                   ],
                 )

          ],
        ),
      ),
    );
  }
}