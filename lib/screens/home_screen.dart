import 'package:flutter/material.dart';
import 'package:user_preferences/share_preferences/preferences.dart';

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
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _Content(title: 'Dark Mode', state : Preferences.isDarkMode.toString()),
              SizedBox(height: 20),
              _Content(title: 'Gender', state : Preferences.gender.toString()),
              SizedBox(height: 20),
              _Content(title: 'User Name', state : Preferences.name),
            ],
          ),
        ),
      )
    );
  }
}

class _Content extends StatelessWidget {

  final String title;
  final String state;

  const _Content({
    Key? key, required this.title, required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        //ROUND CORNERS
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        child:Container(
          padding: EdgeInsets.all(30),
            child: Text('${this.title} : ${this.state}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),maxLines: 2, overflow: TextOverflow.ellipsis,),
        ),

      ),
    );
  }
}
