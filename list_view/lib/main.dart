
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "exploring Ui widgets",
    home:MyApp(), 
    ),
  );
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(title: Text("Long list view"),),
        body: getListView(context,getListElements()),
        );
  }

}

List<String>   getListElements(){

  var items = List<String>.generate(1000, (counter)=>"Item $counter");
  return items;
}

Widget getListView(BuildContext context, List<String> items)
{
 var listItems = getListElements();

    var listView = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.android),
        title: Text(listItems[index]),
        onTap: () {
          
        },
      );
    }
  );
    
  var listViews = listView;
  return listViews;
}