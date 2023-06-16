import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class counter_screen extends StatefulWidget {
  const counter_screen({Key? key}) : super(key: key);

  @override
  State<counter_screen> createState() => _counter_screenState();
}

class _counter_screenState extends State<counter_screen> {

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(counter.toString(), style: const TextStyle(
          fontSize: 70,
        ),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            counter++;
            setState(() {
            });
          }, child: const Icon(Icons.add),),
          const SizedBox(width: 50,),
          FloatingActionButton(onPressed: (){
            if(counter>0){
              counter--;
            }else{
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('not allow'),)
              );

            }

            setState(() {
            });
          }, child: const Icon(Icons.remove),),
          const SizedBox(width: 50,),
          FloatingActionButton(onPressed: (){
            counter=0;
            setState(() {
            });
          }, child: const Icon(Icons.offline_bolt),)
        ],

      ),
    );
  }
}
