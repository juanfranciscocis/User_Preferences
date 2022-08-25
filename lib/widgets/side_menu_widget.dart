
import 'package:flutter/material.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          _DrawerHeader(),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Screen'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),

          ListTile(
            leading: Icon(Icons.people),
            title: Text('People'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/settings');
            },
          ),





        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(
              'assets/menu-img.jpg'),
              fit: BoxFit.cover
          )
      ),
      );
  }
}