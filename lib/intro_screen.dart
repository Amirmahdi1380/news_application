import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pattern_background.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Center(child: Image.asset('assets/images/logo_news.png')),
          Positioned(
            bottom: 50,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'توسعه یافته توسط',
                    style: TextStyle(
                      fontFamily: 'SM',
                    ),
                  ),
                  Text(
                    'امیرمهدی نورکاظمی',
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
