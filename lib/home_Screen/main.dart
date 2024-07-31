import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/home_Screen/model/navigation_item.dart';
import 'package:login_app/home_Screen/page/favourites_page.dart';
import 'package:login_app/home_Screen/page/header_page.dart';
import 'package:login_app/home_Screen/page/notifications_page.dart';
import 'package:login_app/home_Screen/page/people_page.dart';
import 'package:login_app/home_Screen/page/plugins_page.dart';
import 'package:login_app/home_Screen/page/updates_page.dart';
import 'package:login_app/home_Screen/page/workflow_page.dart';
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
            title: Text('Header'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.header);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('People'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.people);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Favourites'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.favourites);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Workflow'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.workflow);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Updates'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.updates);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Plugins'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.plugins);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Notifications'),
            onTap: () {
              provider.setNavigationItem(NavigationItem.notifications);
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
      case NavigationItem.people:
        return PeoplePage();
      case NavigationItem.favourites:
        return FavouritesPage();
      case NavigationItem.workflow:
        return WorkflowPage();
      case NavigationItem.updates:
        return UpdatesPage();
      case NavigationItem.plugins:
        return PluginsPage();
      case NavigationItem.notifications:
        return NotificationsPage();
      default:
        return Center(child: Text('Page not found')); // Default case for unexpected values
    }
  }
}