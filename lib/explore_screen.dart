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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
    return Scaffold(
      appBar: getAppBar(),
      body: DefaultTabController(
        length: 5, // length of tabs
        //initialIndex: 0,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            getBanner1(),
            SizedBox(
              height: 32,
            ),
            //getBanner(),
            getTabBar(),
            getTabBarView()
          ],
        ),
      ),
    );
  }

  Container getTabBarView() {
    return Container(
      height: 400, //height of TabBarView
      child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                'Display Tab 1',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Display Tab 2',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Display Tab 3',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Display Tab 4',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Display Tab 5',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container getTabBar() {
    return Container(
      child: TabBar(
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.symmetric(horizontal: 4),
        indicatorColor: Colors.transparent,
        controller: _tabController,
        labelColor: Colors.green,
        unselectedLabelColor: Colors.black,
        tabs: [
          Tab(
            child: Container(
              height: 36,
              width: 90,
              decoration: BoxDecoration(
                color: isTouched == 0 ? Color(0xffFFCDD8) : Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Center(
                child: Text(
                  'علم و دانش',
                  style: isTouched == 0
                      ? TextStyle(
                          color: Colors.red,
                          fontFamily: 'SM',
                          fontSize: 12,
                        )
                      : TextStyle(
                          color: Color(0xffBFC3C8),
                          fontFamily: 'SM',
                          fontSize: 12,
                        ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 36,
              width: 90,
              decoration: BoxDecoration(
                color: isTouched == 1 ? Color(0xffFFCDD8) : Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Center(
                child: Text(
                  'جهان',
                  style: isTouched == 1
                      ? TextStyle(
                          color: Colors.red,
                          fontFamily: 'SM',
                          fontSize: 12,
                        )
                      : TextStyle(
                          color: Color(0xffBFC3C8),
                          fontFamily: 'SM',
                          fontSize: 12,
                        ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 36,
              width: 90,
              decoration: BoxDecoration(
                color: isTouched == 2 ? Color(0xffFFCDD8) : Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Center(
                child: Text(
                  'ورزش',
                  style: isTouched == 2
                      ? TextStyle(
                          color: Colors.red,
                          fontFamily: 'SM',
                          fontSize: 12,
                        )
                      : TextStyle(
                          color: Color(0xffBFC3C8),
                          fontFamily: 'SM',
                          fontSize: 12,
                        ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 36,
              width: 90,
              decoration: BoxDecoration(
                color: isTouched == 3 ? Color(0xffFFCDD8) : Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Center(
                child: Text(
                  'تکنولوژی',
                  style: isTouched == 3
                      ? TextStyle(
                          color: Colors.red,
                          fontFamily: 'SM',
                          fontSize: 12,
                        )
                      : TextStyle(
                          color: Color(0xffBFC3C8),
                          fontFamily: 'SM',
                          fontSize: 12,
                        ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              height: 36,
              width: 90,
              decoration: BoxDecoration(
                color: isTouched == 4 ? Color(0xffFFCDD8) : Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Center(
                child: Text(
                  'همه',
                  style: isTouched == 4
                      ? TextStyle(
                          color: Colors.red,
                          fontFamily: 'SM',
                          fontSize: 12,
                        )
                      : TextStyle(
                          color: Color(0xffBFC3C8),
                          fontFamily: 'SM',
                          fontSize: 12,
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getListFollow() {
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: containerFolow(),
          );
        },
      ),
    );
  }

  Widget getBanner() {
    return Stack(
      children: [
        Container(
          child: Image.asset('assets/images/banner2.png'),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 28,
            width: 58,
            decoration: BoxDecoration(
              color: Color(0xffFF033E).withOpacity(0.5),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text(
                'ورزشی',
                style: TextStyle(
                    fontFamily: 'SM', fontSize: 10, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget containerFolow() {
    return Container(
      height: 160,
      width: 133,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/zoomit_logo.png'),
          Text(
            'زومیت',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SM',
              fontSize: 12,
            ),
          ),
          Container(
            height: 36,
            width: 90,
            decoration: BoxDecoration(
              color: Color(0xffFFCDD8),
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: Center(
              child: Text(
                'دنبال کردن',
                style: TextStyle(
                  color: Color(0xffFF033E),
                  fontFamily: 'SM',
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding getBanner1() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Center(
        child: Container(
          height: 180,
          width: 380,
          child: Image.asset('assets/images/banner1.png'),
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

  // chipList() {
  //   return Wrap(
  //     spacing: 6.0,
  //     runSpacing: 6.0,
  //     children: <Widget>[
  //       _buildInputChips('Gamer'),
  //       _buildInputChips('Gamer'),
  //       _buildInputChips('Gamer'),
  //       _buildInputChips('Gamer'),
  //     ],
  //   );
  // }

  // Widget _buildChip(String label, Color color) {
  //   return Chip(
  //     labelPadding: EdgeInsets.all(2.0),
  //     avatar: CircleAvatar(
  //       backgroundColor: Colors.white70,
  //       child: Text(label[0].toUpperCase()),
  //     ),
  //     label: Text(
  //       label,
  //       style: TextStyle(
  //         color: Colors.white,
  //       ),
  //     ),
  //     backgroundColor: color,
  //     elevation: 6.0,
  //     shadowColor: Colors.grey[60],
  //     padding: EdgeInsets.all(8.0),
  //   );
  // }

  // Widget _buildActionChips() {
  //   return ActionChip(
  //     elevation: 8.0,
  //     padding: EdgeInsets.all(2.0),
  //     avatar: CircleAvatar(
  //       backgroundColor: Colors.redAccent,
  //       child: Icon(
  //         Icons.mode_comment,
  //         color: Colors.white,
  //         size: 20,
  //       ),
  //     ),
  //     label: Text('Message'),
  //     onPressed: () {
  //       // ignore: deprecated_member_use
  //       _key!.currentState!.showSnackBar(
  //         SnackBar(
  //           content: Text('Message...'),
  //         ),
  //       );
  //     },
  //     backgroundColor: Colors.grey[200],
  //     shape: StadiumBorder(
  //         side: BorderSide(
  //       width: 1,
  //       color: Colors.redAccent,
  //     )),
  //   );
  // }
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
