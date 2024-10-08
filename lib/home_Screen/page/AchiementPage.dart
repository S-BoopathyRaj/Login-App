import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/page/AchiementNextPage.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';



class Achiementpage extends StatefulWidget {
  @override
  _AchiementpageState createState() => _AchiementpageState();
}

class _AchiementpageState extends State<Achiementpage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      // Navigation logic based on the selected index
      if (index == 0) {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => HomeScreen.()), // Navigate to Homepage
        // );
      } else if (index == 1) {
        // Add navigation logic for ExplorePage here
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ExplorePage()));
      } else if (index == 2) {
        // Add navigation logic for PeoplePage here
        // Navigator.push(context, MaterialPageRoute(builder: (context) => PeoplePage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        // drawer: NavigationDrawerWidget()
        appBar: AppBar(
          title: Text('Achiementpage'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 50, 30, 233),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Achiement of KRD',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '2023 ஆம் ஆண்டு பள்ளி கல்வி துறையின் சர்பாக நடை பெற்ற போட்டியில் மாணவி கனிஷ்கா,மித்ரா , முருகன் பதக்கத்தைவென்றனர் .\n\n'
                  '2002 ஆம் ஆண்டு சேலம்  மாவட்ட சிலம்பாட்ட போட்டியில் மருத்துவ  துறையில்   பாய்லும் மானவி வர்ஷா, தாமரை செல்வி அவர்கள் வெள்ளி  பதக்கத்தை வென்றனர் .\n\n'
                  '2023 ஆம் ஆண்டு ஏற்காட்டில் நடைபெற்ற Silampam Champion போட்டியில் 34 தங்க பதக்கம் 7 வெண்கல பதக்கம் வென்றனர்.\n\n'
                  '2023 ஆம் ஆண்டுநடைபெற்ற Intra Club போட்டியில் 11   முதலிடம்,6 இரண்டாம் இடம்,2 மூன்றாம் இடம் வென்றனர்',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Tamil',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AchievementNextPage()),
            );
          },
          backgroundColor: Colors.black,
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
          selectedItemColor: Color.fromARGB(255, 50, 30, 233),
          onTap: _onItemTapped,
        ),
      );
}
