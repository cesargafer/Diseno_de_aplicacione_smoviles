import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Row(
                  children:  <Widget>[
                    Container(
                      child: Text('Row dentro de un container', textAlign: TextAlign.center),
                      color: Colors.blue,
                    ),
                    Container(  // container
                      child: Column(
                        children: const <Widget>[
                          Text('Usando Column'),
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.contain, // otherwise the logo will be tiny
                              child: FlutterLogo(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          color: Colors.green,
                        ),
                        Container(
                          child: Text('Stack dentro de un container', textAlign: TextAlign.justify),
                          width: 80,
                          height: 80,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),  //Text('Hello World'),
        ),
      ),
    );
  }
}