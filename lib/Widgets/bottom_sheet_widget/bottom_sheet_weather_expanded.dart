import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherappflutterbloc/Widgets/bottom_sheet_widget/bottom_sheet_weather_forecast.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BottomSheetWeather(),
              BottomSheetWeather(),
              BottomSheetWeather(),
              BottomSheetWeather(),
              BottomSheetWeather(),
              BottomSheetWeather(),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          // const SizedBox(height: 16),
          // if (childwidget != null) childwidget!
          GlassContainer(
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.5),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.2,
            // height: 100,
            borderRadius: BorderRadius.circular(50),
            blur: 7,
            borderColor: Colors.transparent,
            // shadowColor: Color.black,
            // alignment: Alignment.center,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff612FAB).withAlpha(100),
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
                // Color(0xFFFFFFF).withAlpha(55),
                Color(0xff612FAB).withAlpha(0),
              ],
              stops: [0.06, 0.95, 1],
            ),
            // decoration: BoxDecoration(
            //   color: Color(0xff612FAB), // Set the desired color
            //   borderRadius: BorderRadius.circular(
            //       50), // Half of the height to create an oval shape
            // ),
          ), // BottomSheetWeather(),
        ],
      ),
    );
  }
}
