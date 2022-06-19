import 'package:flutter/material.dart';
// import 'package:group_project/constants.dart';
// import 'package:group_project/screens/menu/menu_screen.dart';
// import 'package:group_project/widgets/button_widget.dart';
// import 'package:group_project/screens/login/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mobile_app_group_project/config.dart';
import 'package:mobile_app_group_project/screens/views/login_view.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Phu Quoc Gift',
              body: 'Welcome to Phu Quoc Gift. Let’s shop!',
              image: buildImage('assets/images/splash_1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Phu Quoc Gift',
              body: 'Connect with hotel around Phu Quoc',
              image: buildImage('assets/images/splash_2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Phu Quoc Gift',
              body: 'Just stay at the hotel and get the gift',
              // footer: ButtonWidget(
              //   text: "Let's start",
              //   onClicked: () => goToLogin(context),
              // ),
              image: buildImage('assets/images/splash_3.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Next', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          //onDone: () => goToMenu(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToLogin(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          skipFlex: 0,
          nextFlex: 0,
        ),
      );

  void goToLogin(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginView()),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginView()),
      );



  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: kPrimaryColor,
        ),
        bodyTextStyle: TextStyle(fontSize: 14),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
