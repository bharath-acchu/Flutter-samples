import 'package:flutter/material.dart';

void main() => runApp(new Mythought());

class Mythought extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Thoughts..!",
          home:Scaffold(
            appBar: AppBar(title: Text("My thought"),),
            body:Material(
              color:Colors.pinkAccent,
              child: Center(
                  child:Text(
                     "Bad choices,make good stories..!",
                      textDirection:TextDirection.ltr,
                      style:TextStyle(color: Colors.white,fontSize: 30.0,fontFamily: 'Pacifico'),
                           ),

                         ),
                     ) ,
          ),
           
      );
  }

}
