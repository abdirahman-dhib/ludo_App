import 'package:flutter/material.dart';
import 'dart:math';


class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int ludoNumber1=1;
  int ludoNumber2=1;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Ludo App'),
        elevation: 16,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      ludoNumber1=Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$ludoNumber1.png')
                  ),
              )
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      ludoNumber2=Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$ludoNumber2.png')
                  ),
              )
              )
            
          ],


        ),
      ),

    );
  }
}
