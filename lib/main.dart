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
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Pctc'),
      ),
      floatingActionButton:  FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    minimumSize: Size(150, 50),
                    elevation: 5,
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.redAccent),
                    )
                  ),
                  onPressed: (){
                    print('hello bobo');
                  }, child: Text('Elevated Button')),
              
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: EdgeInsets.all(15),

                ),
                  onPressed: (){},
                  child: Text('text Button',style: TextStyle(color: Colors.white),)
              ),

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.green)
                ),
                  onPressed: (){},
                  child: Text('Outline Button')),

              IconButton(
                style: IconButton.styleFrom(
                  side: BorderSide(color: Colors.red),
                  padding: EdgeInsets.all(20)
                ),
                  onPressed: (){},
                  icon: Icon(Icons.add)),

              GestureDetector(
                onDoubleTap: (){
                  print('duble clicked');
                },
                  onLongPress: (){
                    print('long clicked');
                  },
                onTap: (){
                  print('photo clicked');
                },
                 child: Image.asset('asset/images/Thumbnail.png',width: 250,
                  )
              ),

              InkWell(
                splashColor: Colors.red,
                  onDoubleTap: (){
                    print('duble clicked');
                  },
                  onLongPress: (){
                    print('long clicked');
                  },
                  onTap: (){
                    print('photo clicked');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('inkwell button'),
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Phone',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: true,
                  decoration:(InputDecoration(
                    hintText: 'password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                    )
                  )),
                ),
              ),


              Card(
                elevation: 5,
               shadowColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Bobo card okay'),
                ),
              )
            ],
            
          ),
        ),
      ),
    );
  }
}

