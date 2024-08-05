import 'package:flutter/material.dart';

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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // This widget is the header with the logo
  Widget _buildHeader() {
    return AppBar(
      title: Image.asset(
        'assets/logo.png', // Replace with your logo image path
        height: 40.0,
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

  // This widget is the bottom navigation bar
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'People',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildHeader(), // Header with logo
      body: Center(
        child: Text(
          'Selected Page: ${_selectedIndex == 0 ? 'Home' : _selectedIndex == 1 ? 'Explore' : 'People'}',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(), // Bottom navigation bar
    );
  }
}
