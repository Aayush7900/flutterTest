import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: SafeArea(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Monument Recognition',
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            /*mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch  ,*/
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: double.infinity,
                width: 100,
                color: Colors.red,
                child: Text('Container 1'),
              ),
              /*SizedBox(height: 20,),*/
              Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                        child: Text('Container 2'),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                        child: Text('Container 2'),
                      ),
                    ],
                  ),
                )

              ),
              Container(
                width: 100,
                height: double.infinity,
                color: Colors.blue,
                child: Text('Container 3'),
              ),
              /*Container(width: double.infinity,)*/
            ],
          ),
        ),
      ),
    );
  }
}
*/
