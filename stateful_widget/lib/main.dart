import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring stateful widget",
    home: Favoritecity(),
  ));
}

class Favoritecity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return Favoritecitystate();
  }
}

class Favoritecitystate extends State< Favoritecity >
{

  String name = "";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Staeful app widget"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted:(String userinput)
              {
                setState(() {
                  name = userinput;
                });
              }
            ),
            Padding(
              padding: EdgeInsets.all(60.0),
              child: Text(
                "Your best city is $name",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }


  
}
  