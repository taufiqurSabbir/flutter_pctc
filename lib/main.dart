import 'package:flutter/material.dart';

void main() {
 runApp(
      MyApp(),

 );}


class MyApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner:false,
    title: 'flutter exam',
    home:HomeScreen(),
   );
  }
}

class HomeScreen extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: Colors.grey[200],
     appBar: AppBar(
      title: Text('flutter exam',
       style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
       ),
      ),
      centerTitle:true,
      backgroundColor: Colors.deepPurple[300],
      elevation: 10,

      actions: [
       IconButton(
        onPressed:(){},
       icon: Icon(Icons.search)
        ,),


       IconButton(onPressed:(){},
           icon: Icon(Icons.manage_accounts))
      ],

     ),
     drawer: Drawer(
      child: Column(
       children: [
        Container(
         height: 150,
         color: Colors.deepPurple[300],
         child: Center(
          child: Text('Welcome to our Flutter App',
          style: TextStyle(color: Colors.grey[300],
                 fontSize:20
          ),
          ),
         ),
        ),
        ListTile(
         leading:Icon(Icons.dashboard),
         title: Text('Dashboard',
         style: TextStyle(
          fontSize: 16
         ),
         ),
        ),

        ListTile(
         leading:Icon(Icons.home_filled),
         title: Text('Home',
          style: TextStyle(
              fontSize: 16
          ),
         ),
        ),

        ListTile(
         leading:Icon(Icons.account_balance_outlined),
         title: Text('about',
          style: TextStyle(
              fontSize: 16
          ),
         ),
        ),

        ListTile(
         leading:Icon(Icons.design_services),
         title: Text('service',
          style: TextStyle(
              fontSize: 16
          ),
         ),
        ),

        ListTile(
         leading:Icon(Icons.man_sharp),
         title: Text('Team',
          style: TextStyle(
              fontSize: 16
          ),
         ),
        ),

        ListTile(
         leading:Icon(Icons.call),
         title: Text('Contact Us',
          style: TextStyle(
              fontSize: 16
          ),
         ),
        )

       ],
      ),
     ),
     body: Center(
      child: Text('Welcome To our Flutter App',
      style: TextStyle(
       fontSize: 30,
       color: Colors.deepPurple,
       fontWeight: FontWeight.bold,
      ),
      )
     ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){},
 backgroundColor: Colors.deepPurple,
         child: Icon(
             Icons.add,
             size: 45,
         ),

    ),
     floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
