import 'package:elektriker_app/pages/kabeldimensionering.dart';
import 'package:elektriker_app/pages/settings.dart';
import 'package:elektriker_app/pages/home.dart';

import 'package:elektriker_app/theme/color_schemes.g.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // Set initial index to 0, so the first tab is selected
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.system,
      home: Scaffold(
        extendBody: true,
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onItemTapped,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Hjem',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Indstillinger',
            ),
          ],
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
