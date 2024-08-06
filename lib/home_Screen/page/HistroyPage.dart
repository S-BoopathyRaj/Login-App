import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';

class HistryPage extends StatefulWidget {
  @override
  _CombinedPageState createState() => _CombinedPageState();
}

class _CombinedPageState extends State<HistryPage> {
  int _selectedIndex = 0; // Track the selected tab
  String _currentTitle = 'History'; // Initial title

  // Titles for each page
  final List<String> _pageTitles = [
    'History',  // Title for History Page
    'Explore',  // Title for Explore Page
    'People',   // Title for People Page
  ];

  // Content for each page
  final List<Widget> _pages = [
    // History Page Content
    Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'History of KRD',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '2022 ஆம் ஆண்டு தமிழ்ப் புத்தாண்டில் 22 வயது இளைஞரால் துவங்கப்பட்ட தமிழ்மண்ணின் பாரம்பரியக் கலைக் குழுவாக STEELCITY MARTIAL ART\'S of SILAMBAM என்ற பெயரில் சிறியதொரு அளவில் தன்நம்பிக்கையுடன் துவங்கப்பட்டது.\n\n'
              'பின் ஒரு சில மாதங்களில் K.R.D என்ற மூத்தோர்களின் பெயரை ஆசியாக கொண்டு அடுத்த கட்டநிலைக்கு காலடி தடம் படைக்க முயற்சிகள் கையான ஆயத்தமாக்கபட்டது.\n\n'
              'சேலம் மாவட்ட சிலம்ப நட்சத்திர வீரரும்,தலைசிறந்த ஆசானும் ஆன திரு.நடராஜ்.G அவர்களின் மூத்த மாணவன் என்ற பெரும் நம்பிக்கையுடன் திரு.சீனிவாசன் அவர்கள் சிலம்ப  கலை பயிற்சியின்தலைமை பயிற்சியாளராக ஒப்பு கொண்டார்.',
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
    // Explore Page Content
    Center(
      child: Text(
        'Explore Page',
        style: TextStyle(fontSize: 24),
      ),
    ),
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _currentTitle = _pageTitles[index]; // Update the title
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(_currentTitle),  // Display the current title
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 50, 30, 233),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
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
        onTap: _onItemTapped,
        backgroundColor: Color.fromARGB(255, 50, 30, 233),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}