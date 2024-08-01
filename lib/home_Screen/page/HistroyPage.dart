import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/widget/navigation_drawer_widget.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('History'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 50, 30, 233),
        ),
        body: Center(
          child: Text(
            'This is the History page',
            style: TextStyle(
              fontSize: 20.0,
             
            ),
          ),
        ),
      );
}