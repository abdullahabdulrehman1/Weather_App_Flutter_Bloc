import 'package:flutter/material.dart';
import 'package:weatherappflutterbloc/Widgets/bottomnavi.dart';

// import 'Screens/homepage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
