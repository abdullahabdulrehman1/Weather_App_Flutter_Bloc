import 'package:flutter/material.dart';
import 'package:weatherappflutterbloc/Widgets/weather_screen.dart';

class CitiesListPage extends StatefulWidget {
  const CitiesListPage({super.key});

  @override
  State<CitiesListPage> createState() => _CitiesListPageState();
}

class _CitiesListPageState extends State<CitiesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,

      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF262C51),
                const Color(0xFF3E3F74),
              ],
            ),
          ),
          child: Center(
            child: Text(
              'Hello, this is a gradient scaffold!',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
        // ChatScreen(),
      ]),
    );
  }
}
