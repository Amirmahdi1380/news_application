import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int isTouched = 0;
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    _tabController!.addListener(
      () {
        setState(
          () {
            isTouched = _tabController!.index;
            //print(isTouched);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: getAppBar(),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  height: 180,
                  width: 380,
                  child: Image.asset('assets/images/banner1.png'),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
        width: 70,
        height: 32,
        child: Image.asset('assets/images/logo_news.png'),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/images/search-normal.png'),
            SizedBox(
              width: 20,
            ),
            Image.asset('assets/images/filter-edit.png'),
            SizedBox(
              width: 20,
            )
          ],
        )
      ],
    );
  }


}
          // child: Container(
          //   height: 36,
          //   width: 90,
          //   decoration: BoxDecoration(
          //     color: Color(0xffFFCDD8),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(18),
          //     ),
          //   ),
          //   child: Center(
          //     child: Text(
          //       'علم و دانش',
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontFamily: 'SM',
          //         fontSize: 12,
          //       ),
          //     ),
          //   ),
          // )