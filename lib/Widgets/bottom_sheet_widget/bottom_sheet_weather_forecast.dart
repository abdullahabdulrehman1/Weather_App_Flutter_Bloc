import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetWeather extends StatelessWidget {
  const BottomSheetWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GlassContainer(
        width: 40,
        height: 100,
        borderRadius: BorderRadius.circular(50),
        blur: 7,
        borderColor: Colors.transparent,
        // shadowColor: Color.black,
        alignment: Alignment.bottomCenter,
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
      ),
      // Expanded(child: Text("he"))
      Positioned(
        top: 10, // Adjust the top position as needed
        left: 0, // Adjust the left position as needed
        right: 0, // Adjust the right position as needed
        child: Center(
          child: Text(
            "12 AM",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                // fontWeight: FontWeight.w100,
                color: Colors.white,

                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: 9,
        bottom: 0, // Adjust the top position as needed
        left: 0, // Adjust the left position as needed
        right: 0, // Adjust the right position as needed
        child: Center(
          // child: Image.asset.asset(Uri.file("assets/Images/mooncloud.svg")),
          child: Image.asset("assets/Images/rain_weather.png"),
          // child: SvgPicture(AssetBytesLoader("assets/Images/mooncloud.svg")),
        ),
      ),
      Positioned(
        bottom: 10, // Adjust the top position as needed
        left: 0, // Adjust the left position as needed
        right: 0, // Adjust the right position as needed
        child: Center(
          child: Text(
            "19°",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                // fontWeight: FontWeight.w100,
                color: Colors.white,

                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
