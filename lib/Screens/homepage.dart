import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/bottom_sheet_widget/bottom_sheet.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> bottomBarPages = [
    const Homepage()
    // const Page1(),
    // const Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
          child: Stack(
            children: [
              Image.asset(
                "assets/Images/bg01.png",
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4),
                  child: Image.asset(
                    "assets/Images/house.png",
                    // opacity: 0,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 10),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text(
                        "Karachi",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            // fontWeight: FontWeight.w100,
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        "19°",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            // fontWeight: FontWeight.w100,
                            color: Colors.white,

                            fontSize: 96,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Text(
                        "Mostly Clear°",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            // fontWeight: FontWeight.w100,
                            color: Colors.white38,
                            fontSize: 20,
                            height: 0.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "H:24°   L:18°",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            // fontWeight: FontWeight.w100,
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // showBottomSheet()
              BottomSheets(),
            ],
          ),
        ),
      ),
    );
  }
}
