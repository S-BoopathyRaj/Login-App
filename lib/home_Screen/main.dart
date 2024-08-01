import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/Flutter_UserProfile/pages/profile_page.dart';
import 'package:login_app/home_Screen/model/navigation_item.dart';

import 'package:login_app/home_Screen/page/SettingPage.dart';
import 'package:login_app/home_Screen/page/header_page.dart';
// import 'package:login_app/home_Screen/page/AccountDetails_page.dart';
// import 'package:login_app/home_Screen/page/Profile_page.dart';
// import 'package:login_app/home_Screen/page/achievement_page.dart';
// import 'package:login_app/home_Screen/page/Histroy_page.dart';
// import 'package:login_app/home_Screen/page/ AboutUs_page.dart';
import 'package:login_app/home_Screen/page/AccountDetailsPage.dart';
import 'package:login_app/home_Screen/page/AchiementPage.dart';
import 'package:login_app/home_Screen/page/HistroyPage.dart';
import 'package:login_app/home_Screen/page/AboutUsPage.dart';
import 'package:login_app/home_Screen/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(primarySwatch: Colors.deepOrange),
          home: MainPage(),
        ),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(MyApp.title)),
      drawer: buildDrawer(), 
      body: buildPages(),
    );
  }

  Widget buildDrawer() {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Profile'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.header);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Histroy'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.Profile);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Acheivment'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.  Setting);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('content'),
            onTap: () {
              provider.setNavigationItem(NavigationItem. AboutUs);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('sponsuers'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.Histroy);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('version'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.achievement);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('logout'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.AccountDetails);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.header:
        return HeaderPage();
      case NavigationItem.Profile:
        return ProfilePage();
      case NavigationItem.  Setting:
        return   SettingPage();
      case NavigationItem. AboutUs:
        return  AboutUsPage();
      case NavigationItem.Histroy:
        return HistoryPage();
      case NavigationItem.achievement:
        return Achiementpage();
      case NavigationItem.AccountDetails:
        return AccountDetailsPage();
      default:
        return Center(child: Text('Page not found')); // Default case for unexpected values
    }
  }
}