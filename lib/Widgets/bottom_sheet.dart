import 'package:flutter/material.dart';
// import 'package:weatherappflutterbloc/Screens/homepage.dart';
// import 'package:weatherappflutterbloc/Widgets/bottomnavi.dart';
import './pub_widget/bottom_sheet/draggable_bottom_sheet_nullsafety.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableBottomSheet(
      // backgroundWidget: MyHomePage(),
      previewChild: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: <Widget>[
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
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Container()])
          ],
        ),
      ),
      expandedChild: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.red,
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
