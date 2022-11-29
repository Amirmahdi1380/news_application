import 'package:flutter/material.dart';
import 'package:news_application/homeNews.dart';
import 'package:news_application/intro_screen.dart';
import 'package:news_application/post_screen.dart';

void main() {
  MyWidget myWidget = MyWidget();
  runApp(myWidget);
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

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
      home: PostScreen(),
    );
  }
}
