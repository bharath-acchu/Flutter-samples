# stateful_widget

A new Flutter project to show how stateful widget are used.

## Using Stateful widget

- Create a class that extends a "StatefulWidget",that returns a state in "craetestate
()".
- Create a "state" class , with properties that may change.
- Within state class implement build()  method.
- Call the setState() to make the changees. Calling setState() tells frame works to redraw widget.
- For more details look into main.dart file.

- **NOTE** :
In widget build function observe the following code:
```
 onSubmitted:(String userinput)
              {
                setState(() {
                  name = userinput;
                });

```
- The above code can also have like this:
```
onChange:():(String userinput)
              {
                setState(() {
                  name = userinput;
                });
```
- Here onChange() method is used to change text as and when user enter in the empty space.

- Screenshots


Before            |  After 
:-------------------------:|:-------------------------:
![](./screenshots/state1.jpg) |  ![](./screenshots/state2.jpg)