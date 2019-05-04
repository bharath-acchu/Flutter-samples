import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Button',
       home:Scaffold(
            appBar: AppBar(title: Text("My counter"),),
            body:Builder(builder: (context) => Center(
              child:Container(

                width: 200,
                height: 100,
              
               child: RaisedButton(
              color: Colors.lightBlueAccent,
              child: Text(
                "Book your ticket",
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                )
              ),
               onPressed: () => bookticket(context)  
            ),
            )
            ),

        ),
     ),
  
    );
  }



void bookticket(BuildContext context)
{
  AlertDialog alertDialog = AlertDialog(
    title: Text("Ticket booked sucessfully"),
    content: Text("Have fun..!"),
    
  );

  showDialog(
    context: context,
    builder: (BuildContext context)
    {
      return alertDialog;
    }
  );

}
}