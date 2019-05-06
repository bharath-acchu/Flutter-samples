
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
        floatingActionButton: FloatingActionButton(
          onPressed:() {
           
          },
            child: Icon(Icons.add),
            tooltip:"Add one more item", //when floating buton is pressed
          
        ),
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
          showSnackBar(context,listItems[index]);
        },
      );
    }
  );
    
  var listViews = listView;
  return listViews;
}
void showSnackBar(BuildContext context,String items)
{
  var snackbar = SnackBar(
    content: Text("you just tapped $items"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: ()
      {

      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackbar);
}