import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('products'),
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
        },child: Text('back to Home'),),
      ),
    );
  }
}
