import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui10/model/model.dart';
import 'package:flutterui10/pages/MyHomePage.dart';
import 'package:flutterui10/pages/Sign%20in.dart';
import 'package:flutterui10/services/hive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class SignUp extends StatefulWidget {
  static final String id='Signin';


  @override
  _SignUPState createState() =>_SignUPState();
}

class _SignUPState extends State<SignUp> {
  final _emails=TextEditingController();
  final __adrsses=TextEditingController();
  final  _password=TextEditingController();

  _preform(){
    var email=_emails.text.trim();
    var adrsses=__adrsses.text.trim();
    var password=_password.text.trim();
    var users=User.Hive(email, adrsses, password);

    HiveDB.storeData(users);


    // var user3=HiveDB.getDatas();
    // print(user2.password);
    // print(user2.email);
    // print(user2.adress);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 127, 123,1),

      body:ListView(
        children: [
          // header side for app
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            // height: MediaQuery.of(context).size.height*0.3,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   height: 50,
                //   width: 50,
                //   child: ClipRRect(
                //     child:Image(image: AssetImage('asset/images/ic_profil.jpg'),),
                //     borderRadius:BorderRadius.circular(25),
                //   ),
                // ),
                SizedBox(height: 20,),
                RichText(text: TextSpan(text:'Welcome\n',style:TextStyle(fontSize:20,color: Colors.grey),children: [
                  TextSpan(
                      text:'Sign Up',style: TextStyle(
                      color: Colors.white,
                      fontSize:35,fontWeight: FontWeight.bold
                  )
                  )
                ]))



              ],
            ),

          ),

          Container(

            height: MediaQuery.of(context).size.height,
            // color: Colors.purpleAccent,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height:60,
                ),

                // Email
                Container(
                  padding: EdgeInsets.only(left: 27),

                  child: Text('Email',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),

                )
                ,Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  height: 50,
                  decoration: BoxDecoration(
                    // color: Colors.purpleAccent,
                      border: Border(bottom:BorderSide(color: Colors.grey[100],width: 1))
                  ),
                  child: TextField(
                    controller: _emails,
                    decoration: InputDecoration(
                        border: InputBorder.none
                      // labelText: 'Email'
                    ),
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                // password
                Container(
                  padding: EdgeInsets.only(left: 27),

                  child: Text('Password',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),

                )
                ,Container(
                  margin: EdgeInsets.symmetric(horizontal: 27),
                  height: 50,
                  decoration: BoxDecoration(
                    // color: Colors.purpleAccent,
                      border: Border(bottom:BorderSide(color: Colors.grey[100],width: 1))
                  ),
                  child: TextField(
                    controller:_password,
                    decoration: InputDecoration(
                        border: InputBorder.none
                      // labelText: 'Email'
                    ),
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                // p
                Container(
                  padding: EdgeInsets.only(left: 27),

                  child: Text('Address',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),

                )
                ,Container(
                  margin: EdgeInsets.symmetric(horizontal: 27),
                  height: 50,
                  decoration: BoxDecoration(
                    // color: Colors.purpleAccent,
                      border: Border(bottom:BorderSide(color: Colors.grey[100],width: 1))
                  ),
                  child: TextField(
                    controller: __adrsses,
                    decoration: InputDecoration(
                        border: InputBorder.none
                      // labelText: 'Email'
                    ),
                  ),
                ),
                SizedBox(
                  height:30,
                ),
                // Padding(
                //   padding:  EdgeInsets.symmetric(horizontal:130),
                //   child: Text('Forgot Password',style: TextStyle(fontSize:16,color: Colors.grey),),
                // ),
                SizedBox(
                  height:30,
                ),

                // FlatButton for app
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 35),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(7, 127, 123,1),
                    borderRadius: BorderRadius.circular(8),

                  ),child:FlatButton(
                  onPressed: (){
                    _preform();
                    Navigator.pop(context,Signin.id);
                  },
                  child: Text('Sign Up',style: TextStyle(color:Colors.white,fontSize: 17),),
                ),

                ),
                SizedBox(
                  height:20,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 170),
                    child: Text('--OR--',style: TextStyle(color: Colors.grey),)),
                SizedBox(
                  height:20,
                ),

                // button for instagram and facebook
                Padding(

                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          width: 30,
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.facebookF,color: Colors.indigo,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          width: 30,
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.twitter,color: Colors.greenAccent,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          width: 30,
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.instagram,color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height:30,
                ),
                Padding(

                  padding:  EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      RichText(text: TextSpan(
                        text: 'Already you have account?',style: TextStyle(color: Colors.grey),

                      )),
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context,Signin.id);
                          },
                          child: Text('Sign In',style: TextStyle(fontSize: 17,color: Colors.blue,fontWeight: FontWeight.bold)))
                    ],
                  ),
                )










              ],
            ),

          )
        ],
      ),


    );
  }
}
