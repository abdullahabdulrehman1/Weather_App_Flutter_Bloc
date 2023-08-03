import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:weatherappflutterbloc/Widgets/bottom_sheet_widget/bottom_sheet_row_widget.dart';
// import 'package:weatherappflutterbloc/Widgets/bottom_sheet_widget/bottom_sheet_weather_expanded.dart';
import 'package:weatherappflutterbloc/Widgets/bottom_sheet_widget/bottom_sheet_weather_hourly.dart';
import '../pub_widget/bottom_sheet/draggable_bottom_sheet_nullsafety.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableBottomSheet(
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
              // borderGradient: LinearGradient(
              //   begin: Alignment.bottomRight,
              //   end: Alignment.topLeft,
              //   colors: [
              //     Color(0xFF4579C5).withAlpha(100),
              //     Color(0xFFFFFFF).withAlpha(55),
              //     Color(0xff612FAB).withAlpha(0),
              //   ],
              //   stops: [0.06, 0.95, 1],
              // ),
              child: WeatherHourlyDaily())),
      expandedChild: GlassContainer(
        // padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.9,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        blur: 5,
        borderColor: Colors.transparent,
        alignment: Alignment.bottomCenter,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color(0xff612FAB).withAlpha(100),
            // Color(0xFFffffff).withAlpha(0),
            Color(0xff612FAB).withAlpha(50),
          ],
          stops: [0.3, 1],
        ),
        child: BottomSheetRowWidget(),

        // borderGradient: LinearGradient(
        //   begin: Alignment.bottomRight,
        //   end: Alignment.topLeft,
        //   colors: [
        //     Color(0xFF4579C5).withAlpha(100),
        //     Color(0xFFFFFFF).withAlpha(55),
        //     Color(0xff612FAB).withAlpha(0),
        //   ],
        //   stops: [0.06, 0.95, 1],
        // ),
        // child: Column(
        //   children: [
        //     BottomSheetWeatherExpanded(),
        //     BottomSheetRowWidget(
        //       margin: EdgeInsets.only(
        //           top: MediaQuery.of(context).size.height * 0.40),
        //     ),
        //     BottomSheetRowWidget(
        //       margin: EdgeInsets.only(
        //           top: MediaQuery.of(context).size.height * 0.57),
        //     ),
        //     // BottomSheetRowWidget(
        //     //   margin: EdgeInsets.only(
        //     //       top: MediaQuery.of(context).size.height * 0.74),
        //     // ),
        //     // BottomSheetRowWidget(),
        //   ],
        // ),

        // child: Column(
        //   children: [
        //     Expanded(
        //       child: Stack(
        //         children: [
        //           BottomSheetWeatherExpanded(),
        //           // BottomSheetRowWidget(
        //           //   margin: EdgeInsets.only(
        //           //     top: MediaQuery.of(context).size.height * 0.40,
        //           //   ),
        //           // ),
        //           // BottomSheetRowWidget(
        //           //   margin: EdgeInsets.only(
        //           //     top: MediaQuery.of(context).size.height * 0.57,
        //           //   ),
        //           // ),
        //           ListView.builder(
        //               itemCount: 4,
        //               itemBuilder: (context, index) {
        //                 return BottomSheetRowWidget(
        //                   margin: EdgeInsets.only(
        //                     // top: MediaQuery.of(context).size.height * 0.40,
        //                   ),
        //                 );
        //               })

        //           // You can add more widgets to the Stack here
        //         ],
        //       ),
        //     ),
        //     // Other widgets can go below the Expanded widget
        //   ],
        // )),
      ),
      minExtent: 180,
      maxExtent: MediaQuery.of(context).size.height * 0.75,
    );
  }
}

//dead COde



// child: Column(
        //   children: <Widget>[
        //     const Icon(
        //       Icons.keyboard_arrow_down,
        //       size: 30,
        //       color: Colors.white,
        //     ),
        //     const SizedBox(height: 8),
        //     const Text(
        //       'Hey...I\'m expanding!!!',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 16,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     const SizedBox(height: 16),
        //     Expanded(
        //       child: GridView.builder(
        //         itemCount: 1,
        //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 2,
        //           crossAxisSpacing: 10,
        //           mainAxisSpacing: 10,
        //         ),
        //         itemBuilder: (BuildContext context, int index) {
        //           return Container(
        //             decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //           );
        //         },
        //       ),
        //     )
        //   ],
        // ),