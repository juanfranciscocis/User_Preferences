
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preferences/share_preferences/preferences.dart';

import '../providers/theme_provider.dart';
import '../widgets/widgets.dart';

class SettingsScreen extends StatefulWidget{
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  Preferences preferences = Preferences();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingsScreen'),
      ),
      drawer: SideMenuWidget(), //Drawer is a widget that is used to display a navigation menu.
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Card(
              //ROUND CORNERS
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              //add elevation to give it a 3D effect
              elevation: 15,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(height: 40),
                    Text('Theme', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    SwitchListTile.adaptive(
                      title: Text('Dark Mode', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      value: Preferences.isDarkMode,
                      onChanged: (value) {
                        Preferences.isDarkMode = value;
                        final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

                        value ? themeProvider.setDarkMode() : themeProvider.setLightMode();
                        setState(() {});
                      },
                    ),
                    SizedBox(width: 60),
                    Text('Gender', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 60),
                    RadioListTile<int>(
                        value: 1,
                        groupValue: Preferences.gender,
                        title: const Text('Masculine', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        onChanged: (value){
                          Preferences.gender = value ?? 1;
                          setState(() {});
                        },
                    ),

                    SizedBox(width: 20),
                    RadioListTile<int>(
                      value: 2,
                      groupValue: Preferences.gender,
                      title: const Text('Feminine', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      onChanged: (value){
                        Preferences.gender = value ?? 2;
                        setState(() {});
                      },
                    ),

                    SizedBox(width: 20),
                    RadioListTile<int>(
                      value: 3,
                      groupValue: Preferences.gender,
                      title: const Text('Other', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      onChanged: (value){
                        Preferences.gender = value ?? 3;
                        setState(() {});
                      },
                    ),

                    SizedBox(height: 40),
                    Text('Name', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 20),

                    TextFormField(
                      initialValue: Preferences.name,
                      onChanged: (value){
                        Preferences.name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        labelText: 'Name',
                        helperText: 'Enter your name',
                        ),
                      ),
                    SizedBox(height: 30),



                  ],
                ),
              ) ,

            )

          ],
        ),
      )
    );
  }
}