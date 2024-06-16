import 'package:flutter/material.dart';

class NaVBarr extends StatelessWidget {
  const NaVBarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBarwdgt(),
    );
  }
}

class NavBarwdgt extends StatefulWidget {
  const NavBarwdgt({Key? key}) : super(key: key);

  @override
  State<NavBarwdgt> createState() => _NavBarwdgtState();
}

class _NavBarwdgtState extends State<NavBarwdgt> {
  int currentIndex = 0;

  static const List body = [
    Icon(
      Icons.home,
      size: 50,
    ),
    Icon(Icons.search, size: 50),
    Icon(
      Icons.person,
      size: 50,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body.elementAt(currentIndex),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: (Icon(Icons.home)), label: 'home'),
          NavigationDestination(icon: (Icon(Icons.search)), label: 'Search'),
          NavigationDestination(icon: (Icon(Icons.person)), label: 'Person'),
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
