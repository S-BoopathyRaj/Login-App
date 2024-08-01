import 'package:flutter/material.dart';

class Histroypagenext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Of KRD'),
        backgroundColor: Color.fromARGB(255, 50, 30, 233),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'மதிப்பிற்குரிய திரு.நடராஜ் அவர்கள் கற்று கொடுத்த சிலம்பபாடம் மட்டுமின்றி வாழ்கை பாடமும் போதித்த வாழ்வியல் முறைகளை கொண்டு தலைமை பயிற்சியாளர் திரு.சீனிவாசன் அவர்களின் வழிகாட்டுதலின் படி KRD CULTURAL GROUP தலைமை பயிற்சியாளர்,2 உதவி பயிற்சியாளர்கள் மற்றும் 1 அலுவலக நிர்வாகி கொண்டு சேலம் மத்திய பகுதியில் ஜங்ஷன் பிரதான சாலை (200m இடைவெளியில்) மதிப்பிற்குரிய சேலம் மேற்கு சட்ட மன்ற உறுப்பினர் திரு.ரா.அருள் அவர்களின் ஆசியுடன் அலுவலக வளாகத்தில் பசுமை நிறைந்த காற்றிசையுடன்கூழ்ந்த அழகிய பரப்பில் தற்பொழுது இயங்கி கொண்டு உள்ளது. இந்த தமிழ் மண்ணின் கலையை அனைவரின் மனதில் விதைக்கும் நோக்கத்தில்',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Tamil',
                fontWeight: FontWeight.w400,
                height: 1.5,
                // wordSpacing: 2.0,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16), // Adjust spacing as needed
            Text(
              'KRD GROUP\'S OF COMPANY - உரிமையாளர் திருமதி .R.தனலக்ஷ்மி',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold, // Use bold for emphasis
                fontStyle: FontStyle.italic, // Use italic for formal tone
                color: Colors.black, // Example color, adjust as needed
              ),
              textAlign: TextAlign.center, // Center align this line
            ),
          ],
        ),
      ),
    );
  }
}
