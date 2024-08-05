import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Card Layout')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // First Row - One Card
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Card 1'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8), // Add some spacing between rows

              // Second Row - Two Cards
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Card 2'),
                      ),
                    ),
                  ),
                  SizedBox(width: 8), // Add some spacing between cards
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Card 3'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),

              // Third Row - One Card
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Card 4'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),

              // Fourth Row - One Card
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Card 5'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),

              // Fifth Row - One Card
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Card 6'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
