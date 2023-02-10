import 'package:flutter/material.dart';
import 'package:plantrip/routes.dart';
import 'package:plantrip/screens/main/main_screen.dart';
import 'package:plantrip/themes/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plan Trip",
      initialRoute: MainScreen.routeName,
      theme: defualtTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.light,
      routes: routes,
      debugShowCheckedModeBanner: true,
    );
  }
}
