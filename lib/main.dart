import 'package:flutter/material.dart';
import 'package:weatherappflutterbloc/Widgets/bottomnavi.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: MyHomePage() //eplace with your custom BottomNavigationBar widget
        ,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
