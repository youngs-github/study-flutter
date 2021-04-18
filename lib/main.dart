import 'package:flutter/material.dart';

import 'package:study_flutter/pages/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IndexPage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            size: 32,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          unselectedItemColor: Colors.black54,
          unselectedIconTheme: IconThemeData(
            color: Colors.black54,
            size: 32,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
