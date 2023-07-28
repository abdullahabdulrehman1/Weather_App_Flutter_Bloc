import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
// import 'package:glassmorphism/glassmorphism.dart';
// import 'package:weatherappflutterbloc/Widgets/angular_gradient.dart';
// import 'package:weatherappflutterbloc/Screens/homepage.dart';
// import 'package:weatherappflutterbloc/Widgets/bottomnavi.dart';
import './pub_widget/bottom_sheet/draggable_bottom_sheet_nullsafety.dart';
// import 'pub_widget/glass_morphic/glassmorphism.dart';

class BottomSheets extends StatefulWidget {
  const BottomSheets({super.key});
  static List<IconData> icons = <IconData>[
    Icons.ac_unit,
    Icons.account_balance,
    Icons.adb,
    Icons.add_photo_alternate,
    Icons.format_line_spacing
  ];

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
        borderRadius: BorderRadius.circular(20),
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Drag Me',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Hourly Forecast",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Hourly Forecast",
                    style: TextStyle(fontWeight: FontWeight.bold))
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
                Stack(children: [
                  Container(
                    width: 40,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xff612FAB), // Set the desired color
                      borderRadius: BorderRadius.circular(
                          50), // Half of the height to create an oval shape
                    ),
                  ),
                  // Expanded(child: Text("he"))
                  Positioned(
                    top: 8, // Adjust the top position as needed
                    left: 0, // Adjust the left position as needed
                    right: 0, // Adjust the right position as needed
                    child: Center(
                      child: Text(
                        '12 AM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ]),
                Container(
                  width: 40,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff612FAB), // Set the desired color
                    borderRadius: BorderRadius.circular(
                        50), // Half of the height to create an oval shape
                  ),
                ),
                Container(
                  width: 40,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff612FAB), // Set the desired color
                    borderRadius: BorderRadius.circular(
                        50), // Half of the height to create an oval shape
                  ),
                ),
                Container(
                  width: 40,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff612FAB), // Set the desired color
                    borderRadius: BorderRadius.circular(
                        50), // Half of the height to create an oval shape
                  ),
                ),
                Container(
                  width: 40,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff612FAB), // Set the desired color
                    borderRadius: BorderRadius.circular(
                        50), // Half of the height to create an oval shape
                  ),
                ),
                Container(
                  width: 40,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff612FAB), // Set the desired color
                    borderRadius: BorderRadius.circular(
                        50), // Half of the height to create an oval shape
                  ),
                ),
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
      minExtent: 250,
      maxExtent: MediaQuery.of(context).size.height * 1,
    );
  }
}
