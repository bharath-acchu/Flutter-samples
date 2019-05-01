
import "package:flutter/material.dart";

void main() => runApp(new MyflutterApp());

class MyflutterApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "My flutter app",
          home:Scaffold(
            appBar: AppBar(title: Text("My first app screen"),),
            body:Material(
              color:Colors.blueAccent,
              child: Center(
                  child:Text(
                     "Hellow world",
                      textDirection:TextDirection.ltr,
                      style:TextStyle(color: Colors.white,fontSize: 40.0),
                           ),

                         ),
                     ) ,
          ),
           
      );
  }

}
