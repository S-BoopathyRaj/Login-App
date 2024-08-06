import 'package:flutter/material.dart';

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

class Explorepage extends StatefulWidget {
  @override
  _AnimatedCardGridState createState() => _AnimatedCardGridState();
}

class _AnimatedCardGridState extends State<Explorepage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  // List of card names
  final List<String> cardNames = [
    'KRD Practice',
    'Notes',
    'Lesson',
    'Results',
    'Current Student',
    'Video 1',
    'Video 2',
    'Card H',
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

  void _onCardTap(int index) {
    setState(() {
      _controller.forward().then((_) => _controller.reverse());
    });
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
      itemCount: cardNames.length, // Use the length of the cardNames list
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => _onCardTap(index),
          child: ScaleTransition(
            scale: _animation,
            child: Card(
              elevation: 5,
              child: Container(
                alignment: Alignment.center,
                child: Text(cardNames[index]), // Use the card name from the list
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