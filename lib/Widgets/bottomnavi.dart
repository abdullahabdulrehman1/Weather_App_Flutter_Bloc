import 'package:flutter/material.dart';
import 'package:weatherappflutterbloc/Screens/cities_page.dart';
import 'package:weatherappflutterbloc/Screens/homepage.dart';
import 'package:weatherappflutterbloc/Widgets/pub_widget/motion-badge.widget.dart';
import 'package:weatherappflutterbloc/Widgets/pub_widget/motion-tab-bar.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'dart:typed_data';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      initialIndex: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7582F4),
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Add City", // Set the initial selected tab here
        useSafeArea: true,
        labels: const ["Dashboard", "Add City", "Cities"],
        icons: const [Icons.dashboard, Icons.add, Icons.menu_rounded],
        badges: [
          const MotionBadgeWidget(
            text: '99+',
            textColor: Colors.white,
            color: Colors.red,
            size: 18,
          ),
          const MotionBadgeWidget(
            text: '45+',
            textColor: Colors.white,
            color: Colors.red,
            size: 18,
          ),
          null,
        ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),

        tabIconColor: Colors.white,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.white,
        tabIconSelectedColor: Colors.blue[900],
        tabBarColor: Color.fromARGB(136, 117, 130, 244),
        onTabItemSelected: (int value) {
          setState(() {
            _tabController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Center(child: Text("ABC")),
          Homepage(),
          CitiesListPage(),
        ],
      ),
    );
  }
}
