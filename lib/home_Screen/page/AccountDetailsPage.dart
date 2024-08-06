import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/page/Explore.dart';
import 'package:login_app/home_Screen/page/Home.dart';
import 'package:login_app/home_Screen/page/Homepage.dart';
import 'package:login_app/home_Screen/page/People.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';

class AccountDetailsPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<AccountDetailsPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Homepage(),
    Explorepage(),
    PeoplePage(),
  ];

  final List<String> _titles = [
    'Home',
    'Explore',
    'People',
  ];

  void _onItemTapped(int index) {
    setState(() { 
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}