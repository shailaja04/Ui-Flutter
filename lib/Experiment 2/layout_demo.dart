import 'package:flutter/material.dart';

void main() {
  runApp(LayoutDemoApp());
}

class LayoutDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Layout Widgets Example")),
        body: Column(
          children: [
            // Row Example
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.amber[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, size: 40, color: Colors.red),
                  Icon(Icons.star, size: 40, color: Colors.green),
                  Icon(Icons.person, size: 40, color: Colors.blue),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Column Example
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.teal[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("First Item", style: TextStyle(fontSize: 20)),
                  Text("Second Item", style: TextStyle(fontSize: 20)),
                  Text("Third Item", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Stack Example
            Container(
              height: 200,
              width: 200,
              color: Colors.grey[300],
              child: Stack(
                children: [
                  Container(height: 200, width: 200, color: Colors.blue),
                  Positioned(
                    left: 50,
                    top: 50,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                  Positioned(
                    left: 70,
                    top: 70,
                    child: Text(
                      "Stacked!",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
