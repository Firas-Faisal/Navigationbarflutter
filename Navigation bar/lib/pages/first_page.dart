// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firstthing/pages/home_page.dart';
import 'package:firstthing/pages/profile_page.dart';
import 'package:firstthing/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
//this keeps track of the selected index
  int _selectedIndex = 0;

//this method update the new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
//homepage
    HomePage(),

//profile page
    ProfilePage(),

//settingpage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "1st page",
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Profile',
          ),
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.power_settings_new),
            label: 'settings',
          ),
        ],
      ),
      //this is for drawer to use the drawer just uncomment it and comment the Bottom navigation bar section
      /*drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(children: [
          //common to place a drawer header here
          DrawerHeader(
            child: Icon(Icons.favorite, size: 48),
          ),

          //home page list title
          ListTile(
            leading: Icon(Icons.home),
            title: Text("H O M E"),
            onTap: () {
              Navigator.pop(context);
              // go to home page
              Navigator.pushNamed(context, '/homepage');
            },
          ),
          //setting page title
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap: () {
              //go to settings page
              Navigator.pushNamed(context, '/settingspage');
            },
          )
        ]),
      ),*/
    );
  }
}
