import 'package:flutter/material.dart';
import 'package:plantrip/screens/AccountScreen.dart';
import 'package:plantrip/screens/CreateScreen.dart';
import 'package:plantrip/screens/HomeScreen.dart';
import 'package:plantrip/screens/SavedScreen.dart';
import 'package:plantrip/screens/TripScreen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trans Travels',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryIconTheme: IconThemeData(size: 32),
      ),
      home: const Directionality(
        textDirection: TextDirection.ltr,
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screenWidgets = [
    const HomeScreen(),
    const TripScreen(),
    const CreateScreen(),
    const SavedScreen(),
    const AccountScreen()
  ];

  final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        activeIcon: Icon(Icons.home),
        label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.place_outlined),
        activeIcon: Icon(Icons.place),
        label: 'Trips'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.add_circle_outline,
        ),
        activeIcon: Icon(
          Icons.add_circle,
        ),
        label: 'Create'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.bookmark_border_outlined),
        activeIcon: Icon(Icons.bookmark),
        label: 'Saved'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_outlined),
        activeIcon: Icon(Icons.account_circle),
        label: 'Me')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenWidgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationBarItems,
        iconSize: 28,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        enableFeedback: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
