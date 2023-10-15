import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/components/practice.dart';
import 'package:provider_flutter/components/practice_api.dart';
import 'package:provider_flutter/home_page.dart';
import 'package:provider_flutter/provider/count_provider.dart';
import 'package:provider_flutter/provider/example_one.dart';
import 'package:provider_flutter/provider/favorite_provider.dart';
import 'package:provider_flutter/provider/theme_changer_provider.dart';
import 'package:provider_flutter/screens/count_examples.dart';
import 'package:provider_flutter/screens/dark_theme.dart';
import 'package:provider_flutter/screens/emaple_one.dart';
import 'package:provider_flutter/screens/fav_screen.dart';
import 'package:provider_flutter/screens/login_screen.dart';
import 'package:provider_flutter/screens/value_notify_listener.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExampleOneProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteItemProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeChanger(),
        ),
        ChangeNotifierProvider(
          create: (_) => ForomObsecure(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        )
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
              brightness: Brightness.light, primaryColor: Colors.blue),
          darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColorDark: Colors.red,
              primaryColor: Colors.red),
          home: LoginScreen(),
        );
      }),
    );
  }
}
