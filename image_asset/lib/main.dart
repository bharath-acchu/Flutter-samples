
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image',
      home:Scaffold(
            appBar: AppBar(title: Text("Micky Mouse"),),
            body:Material(
              color:Colors.greenAccent,
              child: Center(
                  child: MyimageAsset(),
              
            
              ),
             ),
          ),
      );
  }
}
class MyimageAsset extends StatelessWidget
  {
  
@override
  Widget build(BuildContext context) {

    AssetImage assetImage = AssetImage('images/download.jpeg');
    Image image = Image(image: assetImage,width:500,height: 500,);

    
    return Container(child: image,);
  }
}