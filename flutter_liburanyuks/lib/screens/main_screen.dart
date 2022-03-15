import 'package:flutter/material.dart';
import 'home/home.screen.dart';

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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
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
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ));
  }
}
