import 'package:flutter/material.dart';
import 'package:plantrip/screens/home/home_screen.dart';
import 'package:plantrip/screens/main/main_screen.dart';
import 'package:plantrip/screens/me/me_screen.dart';
import 'package:plantrip/screens/search/search_screen.dart';
import 'package:plantrip/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  MainScreen.routeName: (context) => const MainScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  MeScreen.routeName: (context) => const MeScreen(),
  SearchScreen.routeName: (context) => const SearchScreen(),
};
