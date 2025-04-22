import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: SafeArea(
          child: Center(
            child: Card(
              elevation: 6,
              margin: EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title
                    Text(
                      "Strawberry Pavlova",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    // Star Rating Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.red),
                        Icon(Icons.star, color: Colors.red),
                        Icon(Icons.star, color: Colors.red),
                        Icon(Icons.star, color: Colors.red),
                        Icon(Icons.star_border),
                        SizedBox(width: 8),
                        Text("170 Reviews"),
                      ],
                    ),

                    SizedBox(height: 20),

                    // Info Row (PREP, COOK, FEEDS)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.kitchen, color: Colors.blue),
                            SizedBox(height: 5),
                            Text("PREP:"),
                            Text("25 min"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.timer, color: Colors.orange),
                            SizedBox(height: 5),
                            Text("COOK:"),
                            Text("1 hr"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.restaurant, color: Colors.blue),
                            SizedBox(height: 5),
                            Text("FEEDS:"),
                            Text("4-6"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
