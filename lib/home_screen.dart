import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'profile.dart';
import 'message_screen.dart';
import 'kontak.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback toggleTheme;

  const HomeScreen({super.key, required this.toggleTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late String username;

  final iconList = <IconData>[
    Icons.home,
    Icons.message,
    Icons.contact_phone,
    Icons.person,
  ];

  @override
  void initState() {
    super.initState();
    final box = GetStorage();
    username = box.read('username') ?? 'Guest';
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      DashboardView(toggleTheme: widget.toggleTheme),
      MessageScreen(),
      Kontak(),
      Profile(email: username),
    ];

    return Scaffold(
      body: pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.softEdge,
        activeColor: Colors.green,
        inactiveColor: Colors.grey,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}

class DashboardView extends StatelessWidget {
  final VoidCallback toggleTheme;

  const DashboardView({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Dashboard"),
        actions: [
          IconButton(icon: Icon(Icons.brightness_6), onPressed: toggleTheme),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halo Bang"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Nama Saya Budi"), Icon(Icons.person)],
            ),
          ],
        ),
      ),
    );
  }
}
