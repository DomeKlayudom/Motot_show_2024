import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/IntroductionScreenUI.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => IntroductionScreenUI())));
    super.initState();
  }

  Positioned _bottomText(String text, double bottomOffset) {
    return Positioned(
      bottom: bottomOffset,
      left: 0,
      right: 0,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.height * 0.025,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/autoCare.jpg',
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Motor Show 2024',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  'THE MOBILITY OF JOYFUL EXPERIENCES',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                CircularProgressIndicator(),
              ],
            ),
          ),
          _bottomText('Created by 6552410028', 50),
          _bottomText('DTI SAU 2024', 20)
        ],
      ),
    );
  }
}
