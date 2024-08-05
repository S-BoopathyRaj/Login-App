import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: NavigationDrawerWidget(), // Correctly placed here
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
    );
  }
}
