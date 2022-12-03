import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:news_application/explore_screen.dart';
import 'package:news_application/homeNews.dart';
import 'package:news_application/intro_screen.dart';

void main() {
  MyWidget myWidget = MyWidget();
  runApp(myWidget);
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _bottonNavigationBar = 0;
  List<Widget> getLayout() {
    return <Widget>[
      IntroScreen(),
      HomeNews(),
      ExploreScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline4: TextStyle(
            fontFamily: 'SM',
            //fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CustomLineIndicatorBottomNavbar(
          splashColor: Color(0xffFF033E).withOpacity(0.1),

          selectedColor: Color(0xffFF033E),
          backgroundColor: Color(0xffFAFAFA),
          //type: BottomNavigationBarType.fixed,
          currentIndex: _bottonNavigationBar,

          onTap: (index) {
            setState(
              () {
                _bottonNavigationBar = index;
              },
            );
          },

          unselectedIconSize: 20,
          enableLineIndicator: true,
          lineIndicatorWidth: 2,
          indicatorType: IndicatorType.Top,
          customBottomBarItems: [
            CustomBottomBarItems(
              label: '',
              icon: Icons.home_filled,
            ),
            CustomBottomBarItems(
              label: '',
              icon: Icons.dashboard,
            ),
            CustomBottomBarItems(
              label: '',
              icon: Icons.account_circle,
            )
          ],
        ),
        body: IndexedStack(
          index: _bottonNavigationBar,
          children: getLayout(),
        ),
      ),
    );
  }
}

List<Widget> getLayout() {
  return <Widget>[
    IntroScreen(),
    HomeNews(),
    ExploreScreen(),
  ];
}
