import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';


class Achiementpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('History'),
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
                    fontWeight:
                        FontWeight.w400, // Adjust weight for formal look
                    height: 1.5, // Line height for better readability
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
              MaterialPageRoute(builder: (context) => Histroypagenext()),
            );
          },
          backgroundColor: Colors.black,
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      );
}