import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:client/View/Home/Home_page/Home.dart';
import 'package:client/View/Home/Home_page/more_page.dart';
import 'package:client/consts/colors.dart';
import 'package:client/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _homepageKey =  GlobalKey();

  List<IconData> icon = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.wallet,
    FontAwesomeIcons.bars,];

  int page = 0;
  int pageView = 0;
  PageController  pageController = PageController(initialPage: 0);
  Widget pageViewSection(){
    return PageView(
      controller: pageController,
      onPageChanged: (value){
        setState(() {
          page = value;
        });
      },
      children: [
        Home(),
        Container(
          color: Colors.grey.shade200,
          child: Center(child: "worked on pending".text.black.fontFamily(bold).make())
        ),
        MorePage()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepageKey,
      backgroundColor: Colors.white,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: icon,
          iconSize: 18.sp,
          activeIndex: page,
          activeColor: darkVeryBlue,
          inactiveColor: Colors.grey.shade500,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.softEdge,
          // leftCornerRadius: 32,
          // rightCornerRadius: 32,
          gapLocation: GapLocation.none,
          onTap: (p0) {
            setState(() {
              pageView = p0;
              pageController.animateToPage(
                  p0, duration:
                  const Duration(milliseconds: 200),
                  curve: Curves.linear);
            });
          },
      ),
      body: pageViewSection(),
    );
  }
}
