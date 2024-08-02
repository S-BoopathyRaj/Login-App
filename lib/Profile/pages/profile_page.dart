import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_app/Flutter_UserProfile/pages/edit_image.dart';
import 'package:login_app/Profile/pages/edit_description.dart';
import 'package:login_app/Profile/pages/edit_email.dart';
import 'package:login_app/Profile/pages/edit_image.dart';
import 'package:login_app/Profile/pages/edit_name.dart';
import 'package:login_app/Profile/pages/edit_phone.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';
import '../user/user.dart';
import '../widgets/display_image_widget.dart';
import '../user/user_data.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;

    return Scaffold(
      // Use the Drawer widget directly
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(64, 105, 225, 1),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Replace Padding with AppBar for consistent spacing and navigation
          InkWell(
            onTap: () {
              navigateSecondPage(EditImagePage());
            },
            child: DisplayImage(
              imagePath: user.image,
              onPressed: () {},
            ),
          ),
          buildUserInfoDisplay(user.name, 'Name', EditNameFormPage()),
          buildUserInfoDisplay(user.phone, 'Phone', EditPhoneFormPage()),
          buildUserInfoDisplay(user.email, 'Email', EditEmailFormPage()),
          Expanded(
            child: buildAbout(user),
            flex: 4,
          )
        ],
      ),
    );
  }

  Widget buildUserInfoDisplay(String getValue, String title, Widget editPage) => 
    Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 1),
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      navigateSecondPage(editPage);
                    },
                    child: Text(
                      getValue,
                      style: TextStyle(fontSize: 16, height: 1.4),
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 40.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );

  Widget buildAbout(User user) => 
    Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tell Us About Yourself',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 1),
          Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      navigateSecondPage(EditDescriptionFormPage());
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          user.aboutMeDescription,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 40.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );

  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}
