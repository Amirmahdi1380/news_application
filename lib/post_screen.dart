import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrelled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: false,
              toolbarHeight: 20,
              actions: [],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10),
                child: Stack(children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 180,
                      top: 4,
                      left: 180,
                      child: Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(26, 7, 7, 7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: 40,
                      ))
                ]),
              ),
              backgroundColor: Colors.white,
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/image-news-post.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: getContainer(),
      ),
    );
  }

  Container getContainer() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('۵ دقیقه قبل',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'SM',
                    color: Colors.black,
                  )),
              Container(
                height: 26,
                width: 117,
                decoration: BoxDecoration(
                  color: Color(0xffFF033E),
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'خبرگزاری آخرین خبر',
                      style: TextStyle(
                        fontSize: 8,
                        fontFamily: 'SM',
                        color: Colors.white,
                      ),
                    ),
                    Image.asset('assets/images/logo_news_name1.png')
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'پیشنهاد مونیوز',
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'SM',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    child: Image.asset('assets/images/flash-circle.png'),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '''
پاسـخ مـنـفی پــورتـو به چـلـسی بـرای جــذب طـارمـی
با طعم تهدید!
''',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'SM',
                  color: Colors.black,
                ),
                textDirection: TextDirection.rtl,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 36,
                width: 77,
                decoration: BoxDecoration(
                  color: Color(0xffFFCDD8),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Text(''),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 36,
                width: 77,
                decoration: BoxDecoration(
                  color: Color(0xffFFCDD8),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 36,
                width: 77,
                decoration: BoxDecoration(
                  color: Color(0xffFFCDD8),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
