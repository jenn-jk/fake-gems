// import package
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// creating parent class of stateful widget
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

Widget myBuilder(context, constraints) {
  return Stack(
    children: [
      Positioned.fill(
        child: Image.asset('assets/images/gems.jpg', fit: BoxFit.cover),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              height: constraints.maxHeight * 0.5,
              width: constraints.maxWidth * 0.5,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.75),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login", style: TextStyle(fontSize: 18.0)),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "Enter Email",
                    ),
                  ),

                  SizedBox(height: 10.0),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                  ),

                  SizedBox(height: 10.0),

                  OutlinedButton(
                    onPressed: () {
                      print("Login Clicked");
                    },
                    style: OutlinedButton.styleFrom(fixedSize: Size(200, 50)),
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

// creating child class of stateful widget
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GEMS"), backgroundColor: Colors.amber),
      body: LayoutBuilder(builder: myBuilder),
    );
  }
}

/*
1. a stateful widget has a parent class and a child class
2. the parent class is a public class and the child class must be a private class
3. 2 way mapping is done between the parent class and the child class
4. the child class handles the ui components and state information of the parent class
*/
