import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'package:sebha/HomeScreen.dart';
import 'package:sebha/bSheet.dart';
import 'package:sebha/bottomSheet.dart';
import 'package:sebha/wardeScreen.dart';
//this is the main Screen where it includes
// the app bar and the tap bar and the 2 main pages will be displayed after the splash sreeen :
//the sebha(HomeScreen) screen & the wardeScreen.

class tabBar extends StatefulWidget {
  @override
  _tabBarState createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> with SingleTickerProviderStateMixin {
  //tablist for the the bottom bar
  final tabList = ['السبحة', 'حصن المسلم'];
  late TabController _tabController;
  //tabcontroller for controlling the bottom bar
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        // creating a title wrapped by GestureDetector
        //  to enable clicking on the title and the prayers times
        //   show up by the bottom sheet
        // title: GestureDetector(
        //   onTap: () {
        //     showModalBottomSheet(
        //         context: context,
        //         builder: (BuildContext context) {
        //           return bSheet();
        //         });
        //   },
        //   child: Text(
        //     "وَذكِّرْ",
        //     style: TextStyle(
        //         fontStyle: FontStyle.italic,
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //         color: Color(0xff0d4715)),
        //   ),
        // ),
        //sebha image
        leading: Image.asset(
          "images/sebha.png",
          height: 10,
          width: 10,
          color: Color(0xff0d4715),
        ),

        // the icon on the right of the app bar when the user clicks
        //  on it & the bottom sheet will show up where the description of the app

        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return bottomSheet();
                  });
            },
            icon: Icon(Icons.help_outline_outlined),
            color: Color(0xff0d4715),
          )
        ],
        // the tab bar code
        bottom: TabBar(
          controller: _tabController,
          indicator: PointTabIndicator(
            position: PointTabIndicatorPosition.bottom,
            color: Color(0xff0d4715),
            insets: EdgeInsets.only(bottom: 6),
          ),
          tabs: tabList.map((item) {
            return Tab(
              text: item,
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // calling the  2 main pages
          HomeScreen(),
          wardeScreen(),
        ],
      ),
    );
  }
}
