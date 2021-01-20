import 'package:flutter/material.dart';
import 'package:flutterui10/pages/MyHomePage.dart';
import 'package:flutterui10/pages/Sign%20in.dart';
import 'package:flutterui10/pages/SignUp.dart';
import 'package:hive/hive.dart';
import 'package:hive/hive.dart';
// import 'package:hive_db2/pages/signin_page.dart';
// import 'package:hive_db2/pages/signup_page.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  await Hive.initFlutter();
  await Hive.openBox('flutter');


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        MyHomePage.id:(ctx)=>MyHomePage(),
        Signin.id:(ctx)=>Signin(),
        SignUp.id:(ctx)=>SignUp(),


      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Signin(),
    );
  }
}

