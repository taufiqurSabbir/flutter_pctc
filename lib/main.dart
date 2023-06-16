import 'package:flutter/material.dart';
import 'package:pctc_2/home.dart';


void main() {
runApp(myApp());
}



class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'button',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class homeScreen extends StatelessWidget {
  String welcomemassage = 'hi';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        centerTitle: true,
      ),
      body: Center(
            child: Text(welcomemassage,
            style: TextStyle(
              fontSize: 30
            ),
            ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          welcomemassage ='hello';
        },
       label: Text('Change text'),
    ),);
  }
}


///intro /widget


class withchange extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    print('step-1');

        return _withchange();
  }
}


///state hold part

class _withchange extends State <withchange> {
  String welcomemassage = 'hi';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('step-2');
  }

  @override
  Widget build(BuildContext context) {
    print('step-3');
   return Scaffold(
      appBar: AppBar(
        title: Text('stateless'),
        centerTitle: true,
      ),
     body: Center(
       child: Text(welcomemassage,
         style: TextStyle(
             fontSize: 30
         ),
       ),
     ),
     floatingActionButton: FloatingActionButton.extended(
       onPressed: (){
         welcomemassage = welcomemassage =='hi'?'hello' : 'hi';
         setState(() {});
       },
       label: Text('Change text'),
     ),
   );
  }

}


