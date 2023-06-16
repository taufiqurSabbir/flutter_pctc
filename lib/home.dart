import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pctc_2/products.dart';
import 'package:pctc_2/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  //navigator
                  //screen to screen = (Route)
                  //Route manage by Router

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Products()));
                },
                child: Text('Product List')),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> User()));
            }, child: Column(children: [Text('User'),Icon(Icons.verified_user)],))
          ],
        )
      ),
    );
  }
}
