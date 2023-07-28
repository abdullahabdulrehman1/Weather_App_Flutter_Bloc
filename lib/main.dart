import 'package:flutter/material.dart';
import 'package:weatherappflutterbloc/Screens/homepage.dart';
import 'package:weatherappflutterbloc/Widgets/bottom_sheet.dart';
import 'package:weatherappflutterbloc/Widgets/bottomnavi.dart';
import 'package:weatherappflutterbloc/Widgets/pub_widget/bottom_sheet/draggable_bottom_sheet_nullsafety.dart';

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
