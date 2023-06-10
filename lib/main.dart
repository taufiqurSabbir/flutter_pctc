import 'package:flutter/material.dart';

//continer,Button,Icon,image

void main() {
runApp(myApp());
}


class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'app pctc',
      home:Homescreen(),
    );
  }
}


class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('flutter pctc -2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 150,
              color: Colors.deepPurple,

              alignment: Alignment.center,
              child: Text('Hello bobo',
              style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 25,

              ),
              ),
            ),

            Container(
              height: 100,
              width: 150,

              margin:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green,
               border: Border.all(color: Colors.grey, width: 4,),
                borderRadius: BorderRadius.circular(20)
              ),

              alignment: Alignment.center,
              child: Text('Hello bobo',
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 25,

                ),
              ),
            ),
            Icon(Icons.home,
              color: Colors.deepPurple,
              size: 32,
              ),
            Image.asset('asset/images/Thumbnail.png'),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 150,vertical: 30)
              ),
                onPressed: (){
              print('hello button click');
            }, child: Text('click here',
              style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold
              ),
            ))
          ],
        ),
      ),
    );
  }
}

