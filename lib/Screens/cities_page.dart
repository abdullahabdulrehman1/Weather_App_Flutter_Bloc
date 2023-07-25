import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherappflutterbloc/Widgets/pub_widget/clipper_pub/rounded_diagonal_path_clipper.dart';

class CitiesListPage extends StatefulWidget {
  const CitiesListPage({super.key});

  @override
  State<CitiesListPage> createState() => _CitiesListPageState();
}

class _CitiesListPageState extends State<CitiesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ListView(
              // itemExtent: 2,
              children: <Widget>[
                SizedBox(height: 30),
                Stack(
                  children: [
                    ClipPath(
                      clipper: RoundedDiagonalPathClipper(),
                      child: Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 148, 139, 202),
                              Color.fromARGB(223, 82, 44, 179),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25, // Adjust the top position as needed
                      right: 20, // Adjust the right position as needed
                      child: Image.asset(
                        "assets/Images/moon.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Positioned(
                      bottom: 10, // Adjust the top position as needed
                      right: 39, // Adjust the right position as needed
                      child: Text(
                        "Cloudy",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "19°",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 80,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Text(
                            "Karachi",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                // fontWeight: FontWeight.w100,
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Text(
                            "Mostly Clear°",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                // fontWeight: FontWeight.w100,
                                color: Colors.white70,
                                fontSize: 12,
                                // height: 0.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    ClipPath(
                      clipper: RoundedDiagonalPathClipper(),
                      child: Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 148, 139, 202),
                              Color.fromARGB(223, 82, 44, 179),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25, // Adjust the top position as needed
                      right: 20, // Adjust the right position as needed
                      child: Image.asset(
                        "assets/Images/Sun_rain.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Positioned(
                      bottom: 10, // Adjust the top position as needed
                      right: 39, // Adjust the right position as needed
                      child: Text(
                        "Sunny",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "19°",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 80,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Text(
                            "Karachi",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                // fontWeight: FontWeight.w100,
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Text(
                            "Mostly Clear°",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                // fontWeight: FontWeight.w100,
                                color: Colors.white70,
                                fontSize: 12,
                                // height: 0.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
