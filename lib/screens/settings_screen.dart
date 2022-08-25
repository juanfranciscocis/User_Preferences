import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SettingsScreen extends StatelessWidget{
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingsScreen'),
      ),
      drawer: SideMenuWidget(), //Drawer is a widget that is used to display a navigation menu.
      body: Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}