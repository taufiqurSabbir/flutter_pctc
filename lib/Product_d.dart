import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product_details extends StatelessWidget {
  final String Product_name;
  const Product_details(this.Product_name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Product_name),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context,'hello back from product list');
            }, child: Text('Back'))
          ],
        )
      ),
    );
  }
}
