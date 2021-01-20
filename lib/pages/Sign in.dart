import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui10/model/model.dart';
import 'package:flutterui10/pages/MyHomePage.dart';
import 'package:flutterui10/pages/SignUp.dart';
import 'package:flutterui10/services/hive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class Signin extends StatefulWidget {
  // String get;
  // Signin(this.get);

  static final String id='Signin';
  @override
  _SigninState createState() => _SigninState();
}
class _SigninState extends State<Signin> {
  final _emailControl=new TextEditingController();
  final _passwordcontroller=new TextEditingController();


  _send()async{
    var email=_emailControl.text.trim();
    var password=_passwordcontroller.text.trim();
    var user=User(password:password,email: email );
    HiveDB.storeData(user);
    User user2=await HiveDB.getData();
     var data=await HiveDB.getDatas();
     // print( data.adress.runtimeType);
     // data.adress==user2.password?Navigator.pushReplacementNamed(context,MyHomePage.id):print('there is nistake here');
    _control(users:data,password: password);


  }

  _control({User users,password}){
    if(users.adress==password){
      Navigator.pushReplacementNamed(context,MyHomePage.id);
      print('enter this place successfully ');
    }
    else{
      print('there is mistake here');
    }


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
                Container(
                  height: 50,
                  width: 50,
                   child: ClipRRect(
                     child:Image(image: AssetImage('asset/images/ic_profil.jpg'),),
                     borderRadius:BorderRadius.circular(25),
                   ),
                ),
                SizedBox(height: 20,),
                RichText(text: TextSpan(text:'Welcome\n',style:TextStyle(fontSize:20,color: Colors.grey),children: [
                  TextSpan(
                    text:'Sign in',style: TextStyle(
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
                   controller: _emailControl ,
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
                    controller: _passwordcontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none
                      // labelText: 'Email'
                    ),
                  ),
                ),
                SizedBox(
                  height:30,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:130),
                  child: Text('Forgot Password',style: TextStyle(fontSize:16,color: Colors.grey),),
                ),
                SizedBox(
                  height:30,
                ),

                // Button for app
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 35),
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(7, 127, 123,1),
                    borderRadius: BorderRadius.circular(8),

                ),child:FlatButton(
                  onPressed: (){
                    _send();

                  },
                  child: Text('Sign In',style: TextStyle(color:Colors.white,fontSize: 17),),
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
                  height:20,
                ),
                Padding(

                  padding:  EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      RichText(text: TextSpan(
                        text: 'Dont you have account?',style: TextStyle(color: Colors.grey),

                      )),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context,SignUp.id);
                        },
                          child: Text('Sign Up',style: TextStyle(fontSize: 17,color: Colors.blue,fontWeight: FontWeight.bold)))
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
