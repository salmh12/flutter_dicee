import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int liftediceenumber=1;
  int rightdiceenumber=1;
  void changediceface(){
setState(() {
                   liftediceenumber=Random().nextInt(6)+1;
                  rightdiceenumber=Random().nextInt(6)+1;
                });

  }
  @override
  Widget build(BuildContext context) {
    return 
    Center(
      child: Row(
        children: <Widget>[
           Expanded(
            child:
           Padding(
             padding: const EdgeInsets.all(16.0),
             child:FlatButton( 
              onPressed: (){
                changediceface();
               
              },
             child: Image.asset('images/dice$liftediceenumber.png'),)
             
           )
            ),
            Expanded(child: 
           Padding(
             padding: const EdgeInsets.all(16.0),
             child:FlatButton(
              onPressed: (){
                changediceface();
              },
             child: Image.asset('images/dice$rightdiceenumber.png'),)
             )
           )
            
        ],
      ),
    );
    
  }
}

