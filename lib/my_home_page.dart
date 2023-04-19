import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<String> _titles = ["Home", "Search", "Comments", "Profile"];
  List<Widget> _pages = [
    Container(
      child: Center(
        child: Text("Home"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Search"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Comments"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Profile"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: _bars(),
      ),
    );
  }

  List<BottomNavigationBarItem> _bars() {
    return const [
      BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: Colors.green,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          label: "Search"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.comment,
            color: Colors.grey,
          ),
          label: "Comment"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.verified_user,
            color: Colors.grey,
          ),
          label: "Profile"),
    ];
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
      elevation: 1,
      title: Text(
        _titles[_currentIndex],
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ))
      ],
    );
  }
}
