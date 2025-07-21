import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Veejay on Huawei')),
        body: Center(child: Text('This works on P40 Lite 🚀')),
      ),
    );
  }
}
