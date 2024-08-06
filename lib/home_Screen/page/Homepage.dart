import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/page/Explore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Animated Cards')),
        body: Explorepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _AnimatedCardGridState createState() => _AnimatedCardGridState();
}

class _AnimatedCardGridState extends State<Homepage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  // List of card names and their corresponding links
  final List<Map<String, String>> cards = [
    {'name': 'KRD Practice', 'link': 'https://example.com/krd-practice'},
    {'name': 'Notes', 'link': 'https://example.com/notes'},
    {'name': 'Lesson', 'link': 'https://example.com/lesson'},
    {'name': 'Results', 'link': 'https://example.com/results'},
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(_controller);
  }

  void _onCardTap(String link) {
    // Here you can navigate to a new screen or open a URL
    // For demonstration, we'll just print the link to the console
    print('Navigating to: $link');
    // Uncomment the following line to open the URL in a web browser
    // launch(link);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
      ),
      itemCount: cards.length, // Use the length of the cards list
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => _onCardTap(cards[index]['link']!),
          child: ScaleTransition(
            scale: _animation,
            child: Card(
              elevation: 5,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  cards[index]['name']!, // Use the card name from the list
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}