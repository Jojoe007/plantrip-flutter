import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:plantrip/routes.dart';
import 'package:plantrip/screens/forum/forum_screen.dart';
import 'package:plantrip/screens/home/components/home_body.dart';
import 'package:plantrip/screens/home/home_screen.dart';
import 'package:plantrip/screens/me/me_screen.dart';
import 'package:plantrip/screens/rental/rental_screen.dart';
import 'package:plantrip/screens/trip/trip_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const String routeName = "/";

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screenNavigations = [
    const HomeScreen(),
    const RentalScreen(),
    const TripScreen(),
    const ForumScreen(),
    const MeScreen()
  ];

  final List<BottomNavigationBarItem> _bottomNavigationItems = [
    const BottomNavigationBarItem(
        label: "Home",
        icon: Icon(Ionicons.home_outline),
        activeIcon: Icon(Ionicons.home)),
    const BottomNavigationBarItem(
        label: "Rental",
        icon: Icon(Ionicons.car_outline),
        activeIcon: Icon(Ionicons.car)),
    const BottomNavigationBarItem(
        label: "Trip",
        icon: Icon(Ionicons.flag_outline),
        activeIcon: Icon(Ionicons.flag)),
    const BottomNavigationBarItem(
        label: "Forum",
        icon: Icon(Ionicons.chatbox_outline),
        activeIcon: Icon(Ionicons.chatbox)),
    const BottomNavigationBarItem(
        label: "Me",
        icon: Icon(Ionicons.person_circle_outline),
        activeIcon: Icon(Ionicons.person_circle)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screenNavigations.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _bottomNavigationItems,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
