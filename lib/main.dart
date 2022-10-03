import 'package:globesisters_internship_project/screens/master_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GlobeSisters Internship Entry Project',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFF9F8FD),
          primaryColor: Colors.cyan,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MasterScreen());
  }
}
