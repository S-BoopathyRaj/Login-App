import 'package:flutter/material.dart';

class AchievementNextPage2 extends StatelessWidget {
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
              'இந்தியாவின் முன்னணி நிறுவனமான TVS தனது 25 ஆம் ஆண்டு வெற்றியை சிறப்பிக்க நடைபெற்ற மாபெரும் நிகழ்ச்சியில்  Sowbaricka: GS MEGDHARSHINI,S VARSHA.T, GOPIKAA.J, SANJANA.MP,KANISHKA MITHRA M,ROOBAVANI. K,SUJITAJ,ARUL JOTHI A.S, MAHESHWARAN. ML, NAVANEETH.P, YASHWNANTH.S, KAMALESH.k,NIVIN SAI. S, சிறப்பு அரங்கேற்றம் மூலம் சான்றிதழ் மற்றும் பதக்கங்களை வென்றனர்.\n\n'
              'பள்ளிகளில் கலை நிகழ்ச்சிகள்\n\n'
              'MAHESWARAN,MLTHARUN. SKANALESH.K\n(LFHS, SCHOOL)\n\nகார்த்திகேயன் .A \n(Pr.MHSS) \n\n RiSH BALA .S,SAJITH.S \n(E QUITAS GURU KUL MHSS) \n \nSRI SARVESHWARAN .G, Yogavarshan. G \n(Gov HSS-SLM)',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Tamil',
                fontWeight: FontWeight.w400,
                height: 1.5,
                // wordSpacing: 2.0,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16), // Adjust spacing as needed
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Replace with the appropriate page for navigation
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => AchievementNextPage()),
      //     );
      //   },
      //   backgroundColor: Colors.black,
      //   child: Text(
      //     'Next',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
