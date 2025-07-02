import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

Widget myBuilder(BuildContext context, BoxConstraints constraints) {
  return Center(child: Text("Home Page"));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: LayoutBuilder(builder: myBuilder),
    );
  }
}
