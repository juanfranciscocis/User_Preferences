import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      drawer: SideMenuWidget(), //Drawer is a widget that is used to display a navigation menu.
      body: Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
