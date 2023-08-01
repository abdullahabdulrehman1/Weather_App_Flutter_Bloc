import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_sheet_weather_forecast.dart';

class WeatherHourlyDaily extends StatelessWidget {
  final Widget? childwidget;
  const WeatherHourlyDaily({this.childwidget, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Column(
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

          // const SizedBox(height: 16),
          // if (childwidget != null) childwidget!
          // BottomSheetWeather(),
        ],
      ),
    ]);
  }
}
