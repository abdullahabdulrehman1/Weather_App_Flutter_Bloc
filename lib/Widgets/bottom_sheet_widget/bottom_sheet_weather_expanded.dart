import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherappflutterbloc/Widgets/bottom_sheet_widget/bottom_sheet_weather_forecast.dart';
import 'package:gradient_line_graph/gradient_line_graph.dart';

class BottomSheetWeatherExpanded extends StatelessWidget {
  const BottomSheetWeatherExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection:
      // ,
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 8),
          Container(
            width: 40,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Hourly Forecast",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    // fontWeight: FontWeight.w100,
                    color: Colors.white,
                    fontSize: 12,
                    height: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                "Daily Forecast",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    // fontWeight: FontWeight.w100,
                    color: Colors.white,
                    fontSize: 12,
                    height: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Divider(
            thickness: 2,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     BottomSheetWeather(),
          //     BottomSheetWeather(),
          //     BottomSheetWeather(),
          //     BottomSheetWeather(),
          //     BottomSheetWeather(),
          //     BottomSheetWeather(),
          //   ],
          // ),
          SizedBox(
            height: 100, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05),
                    child: BottomSheetWeather());
              },
            ),
          ),

          // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: 6,
          //   itemBuilder: (BuildContext context, int index) {
          //     return BottomSheetWeather();
          //   },
          // ),

          // ListView.builder(itemBuilder: (context, index) {
          //   return BottomSheetWeather();
          // }),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          // const SizedBox(height: 16),
          // if (childwidget != null) childwidget!
          GlassContainer(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.15,
            // height: 100,
            borderRadius: BorderRadius.circular(30),
            blur: 7,
            borderColor: Colors.transparent,
            // shadowColor: Color.black,
            // alignment: Alignment.center,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF262C51).withAlpha(100),
                // Color(0xFFffffff).withAlpha(0),
                Color(0xff612FAB).withAlpha(50),
              ],
              stops: [0.3, 1],
            ),
            borderGradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Color(0xFF4579C5).withAlpha(10),
                Color(0xFFFFFFF).withAlpha(55),
                Color(0xff612FAB).withAlpha(0),
              ],
              stops: [0.06, 0.95, 1],
            ),
            // decoration: BoxDecoration(
            //   color: Color(0xff612FAB), // Set the desired color
            //   borderRadius: BorderRadius.circular(
            //       50), // Half of the height to create an oval shape
            // ),
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.height * 0.02,
                  child: Text(
                    "Air Quality Index",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        // fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: 16,
                        height: 1,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: 0, right: 0,

                  // left: MediaQuery.of(context).size.height * 0.02,
                  child: Center(
                    child: Text(
                      "120",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          // fontWeight: FontWeight.w100,
                          color: Colors.white,
                          fontSize: 32,
                          height: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  // top: 40,
                  child: GradientLineGraphView(
                    min: 0,
                    max: 100,
                    value: 20,
                    precentage: 100,
                    color: Color(0xFF4cbdbb).withOpacity(0.7),
                    duration: Duration(milliseconds: 1000),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
