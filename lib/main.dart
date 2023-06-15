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

  List<String> student = [
    'oboob',
    'jojo',
    'mentu',
    'contu',
    'dfdf'
  ];

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
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder:(context,index){
          return Column(
            children: [
              ListTile(
                title: Text(student[index]),
                tileColor: Colors.deepPurple,
              ),
             Padding(padding: EdgeInsets.all(10))
            ],
          );
        },

      ),
    );
  }
}



