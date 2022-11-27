import 'package:flutter/material.dart';

class HomeNews extends StatefulWidget {
  const HomeNews({Key? key}) : super(key: key);

  @override
  State<HomeNews> createState() => _HomeNewsState();
}

class _HomeNewsState extends State<HomeNews> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(color: Colors.amber),
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                child: Text('as'),
              ),
              Tab(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Color(0xffFAFAFA),
          centerTitle: true,
          leading: Icon(
            Icons.notifications_active,
            color: Colors.black,
          ),
          title: Container(
            width: 70,
            height: 32,
            child: Image.asset('assets/images/logo_news.png'),
          ),
        ),
      ),
    );
  }
}

class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar(this.color, this.tabBar);

  final Color color;
  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        child: tabBar,
      );
}
