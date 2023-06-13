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
   TextEditingController _emailTextEditingcontroller = TextEditingController();
   TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('bobo'),
          centerTitle: true,

          leading: IconButton(onPressed: (){},icon: Icon(Icons.home),),

          actions: [
            IconButton(onPressed: (){},icon: Icon(Icons.notifications)),
          ],
        ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  controller: _emailTextEditingcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Phone Number'),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red),


                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  obscureText: true,
                  controller: _passwordcontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.deepPurple,)
                    ),

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red)
                    )
                  ),
                ),
              ),



              ElevatedButton(onPressed: (){
                print(_emailTextEditingcontroller.text);
                print(_passwordcontroller.text);
                _emailTextEditingcontroller.clear();
                _passwordcontroller.clear();
              }, child: Text('show Data')),

              ListTile(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('list click'))
                  );
                },
                title: Text('hello boo'),
                subtitle: Text('Manager'),
                leading: Icon(Icons.add),
                tileColor: Colors.grey[300],
                trailing: Icon(Icons.account_balance),
                contentPadding: EdgeInsets.all(8),
              )
            ],

          ),
        ),
      ),
    );
  }
}



