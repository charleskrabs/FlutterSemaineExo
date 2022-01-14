import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class NomEnGras extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Charles FLORY',
          style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
  
}

class MyWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstAPP',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  int _counter = 100;

  void _incrementer() {
    setState(() {
      _counter += 100;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appli n1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NomEnGras(),
            Text(
              '$_counter',
              style: TextStyle(backgroundColor: Colors.red, fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementer,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
}
