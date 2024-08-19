import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/page/HomePage.dart';

void main() {
  runApp(StudentLoginApp());
}

class StudentLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentLoginScreen(),
    );
  }
}

class StudentLoginScreen extends StatelessWidget {
  final TextEditingController studentNameController = TextEditingController();
  final TextEditingController schoolNameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController motherNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('School Login'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: studentNameController,
              decoration: InputDecoration(
                labelText: 'Student Name',
              ),
            ),
            TextField(
              controller: schoolNameController,
              decoration: InputDecoration(
                labelText: 'School/College Name',
              ),
            ),
            TextField(
              controller: fatherNameController,
              decoration: InputDecoration(
                labelText: 'Father\'s Name',
              ),
            ),
            TextField(
              controller: motherNameController,
              decoration: InputDecoration(
                labelText: 'Mother\'s Name',
              ),
            ),
            TextField(
              controller: dobController,
              decoration: InputDecoration(
                labelText: 'Date of Birth',
                hintText: 'YYYY-MM-DD',
              ),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Address',
              ),
            ),
            TextField(
              controller: contactController,
              decoration: InputDecoration(
                labelText: 'Contact',
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission logic
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
