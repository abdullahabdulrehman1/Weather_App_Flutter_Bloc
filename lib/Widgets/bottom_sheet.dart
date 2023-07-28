import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
// import 'package:glassmorphism/glassmorphism.dart';
// import 'package:weatherappflutterbloc/Widgets/angular_gradient.dart';
// import 'package:weatherappflutterbloc/Screens/homepage.dart';
// import 'package:weatherappflutterbloc/Widgets/bottomnavi.dart';
import './pub_widget/bottom_sheet/draggable_bottom_sheet_nullsafety.dart';
import 'pub_widget/glass_morphic/glassmorphism.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({super.key});
  static List<IconData> icons = <IconData>[
    Icons.ac_unit,
    Icons.account_balance,
    Icons.adb,
    Icons.add_photo_alternate,
    Icons.format_line_spacing
  ];
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
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: icons.map((icon) {
                return Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(right: 16),
                  child: Icon(
                    icon,
                    color: Colors.pink,
                    size: 40,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }).toList(),
            )
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
      minExtent: 150,
      maxExtent: MediaQuery.of(context).size.height * 0.8,
    );
  }
}
