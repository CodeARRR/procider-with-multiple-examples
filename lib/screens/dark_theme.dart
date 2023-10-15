import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/provider/theme_changer_provider.dart';

class DarkThemeScreen extends StatefulWidget {
  @override
  State<DarkThemeScreen> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(' theme Mode'),
      ),
      body: Column(children: [
        RadioListTile<ThemeMode>(
            title: Text('dark Mode'),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme),
        RadioListTile<ThemeMode>(
            title: Text('Light '),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme),
        RadioListTile<ThemeMode>(
            title: Text('system'),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme),
        Icon(Icons.favorite),
      ]),
    );
  }
}
