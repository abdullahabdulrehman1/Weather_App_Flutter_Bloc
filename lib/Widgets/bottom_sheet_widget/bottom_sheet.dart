import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pub_widget/bottom_sheet/draggable_bottom_sheet_nullsafety.dart';
import 'bottom_sheet_weather_forecast.dart';

class BottomSheets extends StatefulWidget {
  const BottomSheets({super.key});

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

ScrollController _scrollController = ScrollController();

class _BottomSheetsState extends State<BottomSheets> {
  @override
  Widget build(BuildContext context) {
    return DraggableBottomSheet(
      // backgroundWidget: MyHomePage(),
      previewChild: Center(
          child: GlassContainer(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.9,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        blur: 7,
        borderColor: Colors.transparent,
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
            Color(0xFF4579C5).withAlpha(100),
            Color(0xFFFFFFF).withAlpha(55),
            Color(0xff612FAB).withAlpha(0),
          ],
          stops: [0.06, 0.95, 1],
        ),
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
            // const SizedBox(height: 16),
          ],
        ),
      )),

      expandedChild: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: <Widget>[
            const Icon(
              Icons.keyboard_arrow_down,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            const Text(
              'Hey...I\'m expanding!!!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: 1,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      minExtent: 180,
      maxExtent: MediaQuery.of(context).size.height * 1,
    );
  }
}
