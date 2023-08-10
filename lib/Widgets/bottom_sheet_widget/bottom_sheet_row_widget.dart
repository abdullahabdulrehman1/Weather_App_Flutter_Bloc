import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'bottom_sheet_weather_expanded.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

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
                  child: Expanded(
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        // Chart title
                        // title: ChartTitle(text: 'Half yearly sales analysis'),
                        // Enable legend
                        // legend: Legend(isVisible: true),
                        // Enable tooltip
                        tooltipBehavior: _tooltipBehavior,
                        series: <LineSeries<SalesData, String>>[
                          LineSeries<SalesData, String>(
                              dataSource: <SalesData>[
                                SalesData('Jan', 35),
                                SalesData('Feb', 28),
                                SalesData('Mar', 34),
                                SalesData('Apr', 32),
                                SalesData('May', 40)
                              ],
                              xValueMapper: (SalesData sales, _) => sales.month,
                              yValueMapper: (SalesData sales, _) => sales.value,
                              // Enable data label
                              dataLabelSettings:
                                  DataLabelSettings(isVisible: false))
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
