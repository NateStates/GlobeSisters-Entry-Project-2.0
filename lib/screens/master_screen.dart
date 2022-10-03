import 'package:globesisters_internship_project/screens/home_page.dart';
import 'package:globesisters_internship_project/screens/invite_fiends_page.dart';
import 'package:globesisters_internship_project/screens/profile_page.dart';
import 'package:flutter/material.dart';

class MasterScreen extends StatefulWidget {
  //const Home_Screen({ Key key }) : super(key: key);
  @override
  State<MasterScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MasterScreen> {
  int index_of_screen = 0;
  final screens = [
    HomePage(),
    InviteFriendsPage(),
    ProfilePage(),
  ];
  void tappedAction(int index) {
    setState(() {
      index_of_screen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index_of_screen],
      bottomNavigationBar: BottomNavigationBar(
          onTap: tappedAction,
          currentIndex: index_of_screen,
          selectedItemColor: Colors.orange,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Friends List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            )
          ]),
      appBar: buildAppBar(),
    );
  }

//Menu Bar on the Top Left
  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        leading: IconButton(
            color: Colors.white, icon: Icon(Icons.menu), onPressed: () {}));
  }
}
