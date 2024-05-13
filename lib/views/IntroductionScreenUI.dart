import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/HomeUI.dart';

class IntroductionScreenUI extends StatefulWidget {
  const IntroductionScreenUI({super.key});

  @override
  State<IntroductionScreenUI> createState() => _IntroductionScreenUIState();
}

PageViewModel _pageViewModel(
    String titleText, String imageFileName, String bodyText) {
  String imagePath = 'assets/images/$imageFileName';
  return PageViewModel(
    titleWidget: Text(
      titleText,
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.purple,
      ),
    ),
    image: Image.asset(
      imagePath,
    ),
    bodyWidget: Text(
      bodyText,
      textAlign: TextAlign.center,
      style: TextStyle(),
    ),
  );
}

class _IntroductionScreenUIState extends State<IntroductionScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        autoScrollDuration: 2000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          _pageViewModel('Honda City', 'sedanAccord.jpg', '599,000 ฿'),
          _pageViewModel('Mazda CX-5', 'SUVMazda CX-5.jpg', '1,859,000 ฿'),
          _pageViewModel('Mitsubishi Attrage Smart', 'sedanMitsubishiSmart.jpg',
              '584,000 ฿'),
          _pageViewModel('Toyota Revo Standard 4X2',
              'truckToyotaRevoStandard.jpg', '624,000 ฿'),
        ],
        showSkipButton: true,
        skip: Text(
          'Skip',
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
        dotsDecorator: DotsDecorator(
            size: Size(
              MediaQuery.of(context).size.height * 0.015,
              MediaQuery.of(context).size.width * 0.015,
            ),
            color: Colors.grey,
            activeSize: Size(
              MediaQuery.of(context).size.height * 0.015,
              MediaQuery.of(context).size.width * 0.020,
            ),
            activeColor: Colors.green,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ))),
        next: Icon(
          Icons.arrow_forward,
        ),
        nextFlex: 0,
        done: Text(
          'Done',
        ),
        onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            )),
      ),
    );
  }
}
