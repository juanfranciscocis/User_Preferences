
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Card(
                //ROUND CORNERS
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                //add elevation to give it a 3D effect
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('SETTINGS', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                      SizedBox(height: 40),
                      Text('Theme', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SwitchListTile.adaptive(
                        title: Text('Dark Mode', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        value: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(width: 60),
                      Text('Gender', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(width: 60),
                      RadioListTile<int>(
                          value: 1,
                          groupValue: 1,
                          title: const Text('Masculine', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          onChanged: (value){},
                      ),

                      SizedBox(width: 20),
                      RadioListTile<int>(
                        value: 2,
                        groupValue: 1,
                        title: const Text('Feminine', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        onChanged: (value){},
                      ),

                      SizedBox(width: 20),
                      RadioListTile<int>(
                        value: 3,
                        groupValue: 1,
                        title: const Text('Other', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        onChanged: (value){},
                      ),

                      SizedBox(height: 40),
                      Text('Name', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(width: 20),

                      TextFormField(
                        initialValue: "",
                        decoration: InputDecoration(
                          labelText: 'Name',
                          helperText: 'Enter your name',
                          ),
                        ),



                    ],
                  ),
                ) ,

              )

            ],
          ),
        ),
      )
    );
  }
}