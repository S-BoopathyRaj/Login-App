import 'package:flutter/material.dart';
import 'package:login_app/home_Screen/model/navigation_item.dart';
import 'package:login_app/home_Screen/provider/navigation_provider.dart';
import 'package:provider/provider.dart';


class NavigationDrawerWidget extends StatelessWidget {
  static final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) => Drawer(
    child: Container(
      color: Color.fromRGBO(50, 55, 205, 1),
      child: ListView(
        children: <Widget>[
          // buildHeader(
          //   context,
          //   urlImage: 'url_of_your_image_here',
          //   name: 'John Doe',
          //   email: 'john.doe@example.com',
          // ),
          Container(
            padding: padding,
            child: Column(
              children: [
                const SizedBox(height: 24),
                buildMenuItem(
                  context,
                  item: NavigationItem.Profile,
                  text: 'Profile',
                  icon: Icons.verified_user,
                ),
                // const SizedBox(height: 16),
                // buildMenuItem(
                //   context,
                //   item: NavigationItem.  Setting,
                //   text: '  Setting',
                //   icon: Icons.favorite_border,
                // ),
                // const SizedBox(height: 16),
                // buildMenuItem(
                //   context,
                //   item: NavigationItem. AboutUs,
                //   text: ' AboutUs',
                //   icon: Icons.workspaces_outline,
                // ),
                const SizedBox(height: 16),
                buildMenuItem(
                  context,
                  item: NavigationItem.Histroy,
                  text: 'Histroy',
                  icon: Icons.update,
                ),
                const SizedBox(height: 24),
                Divider(color: Colors.white70),
                const SizedBox(height: 24),
                buildMenuItem(
                  context,
                  item: NavigationItem.achievement,
                  text: 'achievement',
                  icon: Icons.account_tree_outlined,
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  context,
                  item: NavigationItem.School,
                  text: 'School',
                  icon: Icons.group,
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  context,
                  item: NavigationItem.Setting,
                  text: 'Settings',
                  icon: Icons.account_balance,
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  context,
                  item: NavigationItem.Login,
                  text: 'Login',
                  icon: Icons.account_balance,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  Widget buildMenuItem(
    BuildContext context, {
    required NavigationItem item,
    required String text,
    required IconData icon,
  }) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    final color = isSelected ? Colors.orangeAccent : Colors.white;

    return Material(
      color: Colors.transparent,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: Colors.white24,
        leading: Icon(icon, color: color),
        title: Text(text, style: TextStyle(color: color, fontSize: 16)),
        onTap: () => selectItem(context, item),
      ),
    );
  }

  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }

  Widget buildHeader(
    BuildContext context, {
    required String urlImage,
    required String name,
    required String email,
  }) =>
    Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => selectItem(context, NavigationItem.header),
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(urlImage),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
}
