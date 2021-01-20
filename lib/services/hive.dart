import 'package:flutterui10/model/model.dart';
import 'package:hive/hive.dart';
// import 'package:hive_db2/pages/signin_page.dart';
// import 'package:hive_db2/pages/signup_page.dart';
import 'package:hive_flutter/hive_flutter.dart';


class HiveDB{

  static var box=Hive.box('flutter');

 static storeData(User user)async{
    await box.put('user',user.conertToMap() );
  }

 static User getData(){
    var user=User.conertToObject(box.get('user'));
   return user;
  }

 static remove(){
    box.delete('user');
  }
  static storeDatas(User users)async{
    await box.put('user',users.conertToMap() );
  }

  static User getDatas(){
    var user=User.conertToObject(box.get('user'));
    return user;
  }

  static removes(){
    box.delete('user');
  }






}