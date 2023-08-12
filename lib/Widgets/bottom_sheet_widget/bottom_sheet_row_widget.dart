import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottom_sheet_weather_expanded.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class BottomSheetRowWidget extends StatefulWidget {
  final EdgeInsets? margin;

  // _SalesData(this.month, this.value);
  const BottomSheetRowWidget({super.key, this.margin});

  @override
  State<BottomSheetRowWidget> createState() => _BottomSheetRowWidgetState();
}

class SalesData {
  String? month;
  int? value;

  SalesData(this.month, this.value);
}

class _BottomSheetRowWidgetState extends State<BottomSheetRowWidget> {
  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.7),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        dragStartBehavior: DragStartBehavior.start,
        child: Column(
          // mainArxisAlignment: MainAxisAlignment.start,
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
                  child: Center(
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        enableSideBySideSeriesPlacement: false,
                        // plotAreaBorderColor: Colors.red,
                        // borderColor: Colors.purple,
                        // Chart title
                        // title: ChartTitle(text: 'Half yearly sales analysis'),
                        // Enable legend
                        // legend: Legend(isVisible: true),
                        // Enable tooltipsi

                        tooltipBehavior: _tooltipBehavior,
                        series: <LineSeries<SalesData, String>>[
                          LineSeries<SalesData, String>(
                              dataSource: <SalesData>[
                                SalesData('Mon', 35),
                                SalesData('Tue', 28),
                                SalesData('Wed', 34),
                                SalesData('Thu', 32),
                                SalesData('Fri', 40),
                                SalesData('Sat', 40),
                                SalesData('Sun', 40),
                              ],
                              xValueMapper: (SalesData sales, _) => sales.month,
                              yValueMapper: (SalesData sales, _) => sales.value,

                              // Enable data label
                              dataLabelSettings:
                                  DataLabelSettings(isVisible: true))
                        ]),
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
                  child: Stack(children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.01,
                      left: MediaQuery.of(context).size.height * 0.02,
                      child: Text(
                        "Humidity",
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
                      top: MediaQuery.of(context).size.height * 0.06,
                      left: 0, right: 0,

                      // left: MediaQuery.of(context).size.height * 0.02,
                      child: Center(
                        child: Text(
                          "66 %",
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
                  ]),
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
