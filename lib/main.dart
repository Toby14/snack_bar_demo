import 'package:flutter/material.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar Demo"),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Show SnackBar"),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Button clicked [SnackBar]"),
          );

          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}

