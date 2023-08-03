import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

import 'bottom_sheet_weather_expanded.dart';

class BottomSheetRowWidget extends StatelessWidget {
  final EdgeInsets? margin;
  const BottomSheetRowWidget({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.7),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        dragStartBehavior: DragStartBehavior.start,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BottomSheetWeatherExpanded(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            // Text("hello"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //    
                // Text("hello"),

                // BottomSheetRowWidget(
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.05,
                // ),

                GlassContainer(
                  // margin: margin ??
                  //     EdgeInsets.only(
                  //       top: MediaQuery.of(context).size.height * 0.35,
                  //       // left: MediaQuery.of(context).size.width * 0.05
                  //       // left: MediaQuery.of(context).size.width * 0.1
                  //     ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.15,
                  // height: 100,

                  borderRadius: BorderRadius.circular(30),
                  blur: 7,
                  borderColor: Colors.transparent,
                  // shadowColor: Color.black,
                  // alignment: Alignment.topCenter,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF262C51).withAlpha(100),
                      Color(0xFFffffff).withAlpha(0),
                      Color(0xff612FAB).withAlpha(50),
                    ],
                    stops: [0.3, 0.7, 1],
                  ),
                  borderGradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      Color(0xFF262C51).withAlpha(100),
                      Color(0xFFffffff).withAlpha(0),
                      Color(0xff612FAB).withAlpha(50),
                    ],
                    stops: [0.3, 0.7, 1],
                  ),
                ),
                GlassContainer(
                  // margin: margin ??
                  //     EdgeInsets.only(
                  //       top: MediaQuery.of(context).size.height * 0.35,
                  //       // right: MediaQuery.of(context).size.width * 0.03
                  //       // left: MediaQuery.of(context).size.width * 0.1
                  //     ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.15,
                  // height: 100,

                  borderRadius: BorderRadius.circular(30),
                  blur: 7,
                  borderColor: Colors.transparent,
                  // shadowColor: Color.black,
                  // alignment: Alignment.topCenter,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF262C51).withAlpha(100),
                      Color(0xFFffffff).withAlpha(0),
                      Color(0xff612FAB).withAlpha(50),
                    ],
                    stops: [0.3, 0.7, 1],
                  ),
                  borderGradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      Color(0xFF262C51).withAlpha(100),
                      Color(0xFFffffff).withAlpha(0),
                      Color(0xff612FAB).withAlpha(50),
                    ],
                    stops: [0.3, 0.7, 1],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
