import 'package:flutter/material.dart';
import 'package:user_preferences/share_preferences/preferences.dart';

import 'screens/screens.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  //CONSTRUCTOR
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Preferences',
      initialRoute: '/home',
      theme: Preferences.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      routes: {
        '/home': (BuildContext context) => HomeScreen(),
        '/settings': (BuildContext context) => SettingsScreen(),
      },
    );
  }




}