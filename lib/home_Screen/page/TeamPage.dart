import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';

class   Teampage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(' Team'),
          centerTitle: true,
           backgroundColor: Color.fromARGB(255, 50, 30, 233),
        ),
      );
}
