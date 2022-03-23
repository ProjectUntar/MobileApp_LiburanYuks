import 'package:flutter/material.dart';
import 'home/HDes_screen.dart';
import 'profile/user.dart';
// @dart=2.9
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Liburan Yuks!'),
          backgroundColor: Colors.white,
          elevation: 5,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.badge_outlined), label: 'Pass'),
            BottomNavigationBarItem(icon: Icon(Icons.beach_access_rounded), label: 'Destination'),
            BottomNavigationBarItem(icon: Icon(Icons.attractions_outlined), label: 'Amusement'),
            BottomNavigationBarItem(icon: Icon(Icons.brunch_dining), label: 'Cuisine'),
            BottomNavigationBarItem(icon: Icon(Icons.airline_seat_individual_suite_outlined), label: 'Lodging'),
          ],
          currentIndex: _selectedTabIndex,
          type: BottomNavigationBarType.fixed,
          elevation: 5,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              _selectedTabIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: _selectedTabIndex,
          children: [
            HomeScreen(),
            Center(child: Text('Destination')),
            Center(child: Text('Cuisine')),
            Center(child: Text('Entertainment')),
            Center(child: Text('Lodging')),
          ],
        ));
  }
}
