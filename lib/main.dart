import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_screen3/b/home.dart';
import 'package:home_screen3/b/profile.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int _Cindex = 0;

  PageController _pageController = PageController(initialPage: 0);

  final _botNavBarItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
        ),
        label: "Home"),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person_outline_outlined,
      ),
      label: "Profile",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _Cindex = newIndex;
          });
        },
        children: [
          Home(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 0, 221, 163),
        unselectedItemColor: Colors.black,
        currentIndex: _Cindex,
        items: _botNavBarItems,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(microseconds: 500), curve: Curves.ease);
        },
        // type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
