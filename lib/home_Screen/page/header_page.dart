import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/data/user.dart'; // Ensure 'name' is defined here or imported properly
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart'; // Ensure NavigationDrawerWidget is correctly implemented

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(), // Ensure this widget is implemented correctly
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(name), 
        centerTitle: true,
      ),
      // Add a body to make sure there's content
      body: Center(
        child: Text('Content goes here'), // This is just a placeholder
      ),
    );
  }
}
