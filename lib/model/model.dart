

class User  {



  String email,password,adress,number;


  User({this.password,this.email});

  User.conertToObject(Map<String,dynamic>json):
        this.email=json['email'],
        this.password=json['password'];
  Map<String,dynamic> conertToMap(){
    Map <String,dynamic> map={
      'email':this.email,
      'password':this.password
    };

    return map;
  }

  User.Hive(this.email,this.adress,this.password);



  User.conertToObjects(Map<String,dynamic>json):
        this.email=json['email'],
        this.password=json['password'],
        this.adress=json['adress'],
        this.number=json['number'];
  Map<String,dynamic> convertToMaps(){
    return{
      'email':this.email,
      'password':this.password,
      'number':this.number,
      'adress':this.adress
    };
  }
  // @override
  // bool operator==(User user){
  //   return user.email==this.email && user.password==this.password;
  // }



}