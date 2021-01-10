import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_design_challenge/constants.dart';
import 'package:flutter_design_challenge/screens/login/Login.dart';
import 'package:flutter_design_challenge/screens/onboarding/onboarding.dart';
import 'package:flutter_design_challenge/screens/onboarding/pages/first_page/first_dark_content.dart';
import 'package:flutter_design_challenge/screens/onboarding/pages/first_page/first_light_content.dart';
import 'package:flutter_design_challenge/screens/onboarding/pages/first_page/first_text.dart';
import 'package:flutter_design_challenge/screens/onboarding/pages/second_page/second_dark_content.dart';
import 'package:flutter_design_challenge/screens/onboarding/pages/second_page/second_light_content.dart';
import 'package:flutter_design_challenge/screens/onboarding/pages/second_page/second_text.dart';
import 'package:flutter_design_challenge/screens/onboarding/pages/third_page/third_dark_content.dart';
import 'package:flutter_design_challenge/screens/onboarding/pages/third_page/third_light_content.dart';
import 'package:flutter_design_challenge/screens/onboarding/pages/third_page/third_text.dart';
import 'package:flutter_design_challenge/screens/onboarding/widgets/header.dart';
import 'package:flutter_design_challenge/screens/onboarding/widgets/next_button.dart';
import 'package:flutter_design_challenge/screens/onboarding/widgets/page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  AnimationController _cardAnimationController;
  Animation<Offset> _slideAnimationLightCard;
  Animation<Offset> _slideAnimationDarkCard;

  AnimationController _pageIndicatorAnimationController;
  Animation<double> _pageIndicatorAnimation;

  int _page = 0;

  @override
  void initState() {
    super.initState();
    _resetAll();
  }

  @override
  void dispose() {
    _cardAnimationController.dispose();
    _pageIndicatorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlue,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              child: Header(
                onClick: _navigateToLogin
              ),
            ),
            Positioned(
              top: 90,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(kPaddingS),
                child: Onboarding(
                  number: _page,
                  darkContent: _getDarkContent(),
                  lightContent: _getLightContent(),
                  textColumn: _getTextContent(),
                  darkOffsetAnimation: _slideAnimationDarkCard,
                  lightOffsetAnimation: _slideAnimationLightCard,
                ),
              )
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width - 74) / 2,
              bottom: 30,
              child: AnimatedBuilder(
                animation: _pageIndicatorAnimation,
                child: NextButton(
                  onClick: () async => await _setNextPage(context),
                ),
                builder: (_, Widget child) {
                  return PageIndicator(
                    currentPage: _page,
                    nextButton: child,
                    angle: _pageIndicatorAnimation.value,
                  );
                },
              ),
            ),
          ],
        )
      ),
    );
  }

  /// MARK - Navigator
  _setNextPage(BuildContext context) async {
    switch (_page) {
      case 0:
        print(_pageIndicatorAnimation.status);
        if(_pageIndicatorAnimation.status == AnimationStatus.dismissed) {
          _pageIndicatorAnimationController.forward();
          await _cardAnimationController.forward();
          setState(() {_page = 1;});
          _setCardSlideIn();
          await _cardAnimationController.forward();
          _setCardSlideOut();
          _setPageIndicatorAnimation(isClockwiseAnim: false);
        }
        break;
      case 1:
        if(_pageIndicatorAnimation.status == AnimationStatus.dismissed) {
          _pageIndicatorAnimationController.forward();
          await _cardAnimationController.forward();
          setState(() {_page = 2;});
          _setCardSlideIn();
          await _cardAnimationController.forward();
          _setCardSlideOut();
        }
        break;
      case 2:
        if(_pageIndicatorAnimation.status == AnimationStatus.completed) {
          _navigateToLogin();
        }
        break;
    }
  }
  _navigateToLogin() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => Login())
    );
    _resetAll();
  }

  _resetAll() {
    setState(() {
      _page = 0;

      // Page indicator animation
      if (_pageIndicatorAnimationController != null) _pageIndicatorAnimationController.dispose();
      _pageIndicatorAnimationController = AnimationController(
          vsync: this,
          duration: kButtonAnimDuration
      );
      _setPageIndicatorAnimation();

      // Cards animations
      if (_cardAnimationController != null) _cardAnimationController.dispose();
      _cardAnimationController = AnimationController(
          vsync: this,
          duration: kCardAnimDuration
      );
      _setCardSlideOut();

    });
  }

  /// MARK - Get page
  Widget _getDarkContent() {
    switch (_page) {
      case 1:
        return SecondDarkContent();
        break;
      case 2:
        return ThirdDarkContent();
        break;
      default:
        return FirstDarkContent();
    }
  }
  Widget _getLightContent() {
    switch (_page) {
      case 1:
        return SecondLightContent();
        break;
      case 2:
        return ThirdLightContent();
        break;
      default:
        return FirstLightContent();
    }
  }
  Widget _getTextContent() {
    switch (_page) {
      case 1:
        return SecondText();
        break;
      case 2:
        return ThirdText();
        break;
      default:
        return FirstText();
    }
  }

  /// MARK - Animations
  _setCardSlideOut() {
    setState(() {
      _slideAnimationLightCard = Tween<Offset>(
          begin: Offset.zero,
          end: Offset(-3.0, 0.0)
      ).animate(CurvedAnimation(
          parent: _cardAnimationController,
          curve: Curves.easeIn
      ));
      _slideAnimationDarkCard = Tween<Offset>(
          begin: Offset.zero,
          end: Offset(-1.5, 0.0)
      ).animate(CurvedAnimation(
          parent: _cardAnimationController,
          curve: Curves.easeIn
      ));
      _cardAnimationController.reset();
    });
  }
  _setCardSlideIn() {
    setState(() {
      _slideAnimationLightCard = Tween<Offset>(
        begin: Offset(3.0, 0.0),
        end: Offset.zero
      ).animate(CurvedAnimation(
        parent: _cardAnimationController,
        curve: Curves.easeOut
      ));
      _slideAnimationDarkCard = Tween<Offset>(
          begin: Offset(1.5, 0.0),
          end: Offset.zero
      ).animate(CurvedAnimation(
          parent: _cardAnimationController,
          curve: Curves.easeOut
      ));
      _cardAnimationController.reset();
    });
  }
  _setPageIndicatorAnimation({bool isClockwiseAnim = true}) {
    double multiplicator = isClockwiseAnim ? 2 : -2;
    setState(() {
      _pageIndicatorAnimation = Tween(
        begin: 0.0,
        end: multiplicator * pi
      ).animate(
        CurvedAnimation(
          parent: _pageIndicatorAnimationController,
          curve: Curves.easeIn
        )
      );
      _pageIndicatorAnimationController.reset();
    });

  }

}
