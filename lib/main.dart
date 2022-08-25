import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preferences/providers/theme_provider.dart';
import 'package:user_preferences/share_preferences/preferences.dart';

import 'screens/screens.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();

  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider(isDarkMode: Preferences.isDarkMode)),
      ], child: const MyApp())
  );
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
      theme: Provider.of<ThemeProvider>(context).getTheme(),
      routes: {
        '/home': (BuildContext context) => HomeScreen(),
        '/settings': (BuildContext context) => SettingsScreen(),
      },
    );
  }




}