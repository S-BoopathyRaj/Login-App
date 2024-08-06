import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';

class PeoplePage extends StatefulWidget {
  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  int _selectedIndex = 2; // Start with People Page selected
  String _currentTitle = 'People'; // Initial title

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _currentTitle = _pageTitles[index]; // Update the title
    });
  }

  final List<String> _pageTitles = [
    'Home',    // Title for Home Page
    'Explore', // Title for Explore Page
    'People',  // Title for People Page
  ];

  final List<Widget> _pages = [
    // Home Page Content
    Center(child: Text('Home Page Content')),
    
    // Explore Page Content
    Center(child: Text('Explore Page Content')),
    
    // People Page Content
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: 8,  // Number of items
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/school${index + 1}.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Item ${index + 1}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      // appBar: AppBar(
      //   title: Text(_currentTitle),  // Display the current title
      //   centerTitle: true,
      //   backgroundColor: Color.fromARGB(255, 50, 30, 233),
      // ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.explore),
      //       label: 'Explore',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: 'People',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   backgroundColor: Color.fromARGB(255, 50, 30, 233),
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      // ),
    );
  }
}