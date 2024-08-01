// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';

class   SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('  Setting'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}