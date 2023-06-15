import 'package:flutter/material.dart';


void main() {
runApp(myApp());
}



class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'button',
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatelessWidget {


  Map<int,String>name={
    1:'php',
    2:'python',
    3:'go',
    4:'dart',
    5:'javascript'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.deepPurple,
              ),
              Container(
                width: 230,
                height: 230,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.yellowAccent,
              ),

              Container(
                width: 180,
                height: 180,
                color: Colors.green,
              ),

              Positioned(

                bottom: 50,
                left: 30,
                right: 50,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blueAccent,
                  alignment: Alignment.center,

                  child: Text('hello'),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}



