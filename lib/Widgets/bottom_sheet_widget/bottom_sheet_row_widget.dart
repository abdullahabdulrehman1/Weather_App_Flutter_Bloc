import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class BottomSheetRowWidget extends StatelessWidget {
  final EdgeInsets? margin;
  const BottomSheetRowWidget({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GlassContainer(
          margin: margin ??
              EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.35,
                // left: MediaQuery.of(context).size.width * 0.05
                // left: MediaQuery.of(context).size.width * 0.1
              ),
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
        ),
        GlassContainer(
          margin: margin ??
              EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.35,
                // right: MediaQuery.of(context).size.width * 0.03
                // left: MediaQuery.of(context).size.width * 0.1
              ),
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
        ),
      ],
    );
  }
}
