import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/page/Achievementpage2.dart';

class AchievementNextPage extends StatefulWidget {
  @override
  _AchievementNextPageState createState() => _AchievementNextPageState();
}

class _AchievementNextPageState extends State<AchievementNextPage> {
  void _onItemTapped(int index) {
    setState(() {
    });
    // Navigate to different pages based on the selected index
    // For demonstration, let's assume these are the routes
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/explore');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/people');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Achievement Of KRD'),
        backgroundColor: Color.fromARGB(255, 50, 30, 233),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2023 & 2024 ஆம் ஆண்டு INCOME TAX DEPARTMENT சார்பில் நடைபெற்ற தமிழ் கலை நிகழ்ச்சில் சிலம்ப அரங்கேற்றம்.\n\n'
              '2023 ஆம் ஆண்டு மத்திய அரசின் குடியரசு அணி வகுப்பில் MARCH-PAST கலை பிரிவில்‌ செய்ய பட்டத்தில் சிலம்ப கலையை தேர்வு செய்து நமது வகுப்பு மாணவி கோபிகா D/O ஜென்நாதன் அவர்கள் பிரதமர்மோடி மற்றும் தமிழகவிளையாட்டு துறை அமைச்சர் திரு.உதயநிதி ஸ்டாலின் முன்னிலையில் சிறப்பு அங்கீகாரம் மற்றும் சிலம்ப அரங்கேற்றம்.\n\n'
              '2024 ஆம் ஆண்டு நடைபெற்ற STATE LEVEL SILAMBAM: 39 போட்டியாளர்கள் நமது வகுப்பில் இருந்துகலந்து கொண்டு 25 முதலிடமும்,12 இரண்டாம் இடமும்,3 மூன்றாம்இடமும் பெற்று கோப்பை வென்று வெற்றி வாகை சூடினர்',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Tamil',
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16), // Adjust spacing as needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AchievementNextPage2()),
          );
        },
        backgroundColor: Colors.black,
        child: Text(
          'Next',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Colors.lightBlueAccent, // Set the background color to sky blue
    );
  }
}