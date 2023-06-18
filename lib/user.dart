import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pctc_2/home.dart';
import 'package:pctc_2/products.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Back Home')),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Products() ));
              }, child: Text('Products')),

              ElevatedButton(onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Products()));
             //push replacement for replace previous page
              }, child: Text('Products list & remove screen')),
            ],
          )
      ),
    );;
  }
}
