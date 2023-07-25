
//import from flutter
import 'package:coins_trap/screens/home_screen.dart';
import 'package:flutter/material.dart';

//import from external library
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool openOnBoardingScreens = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (openOnBoardingScreens == false) {
      Future.delayed(const Duration(seconds: 3), () {
        onIntroEnd();
      });
    }
  }

  Widget _buildImage(String imageSrc, [double width = 350]) {
    return Image.asset(
      imageSrc,
      width: width,
    );
  }

  Widget _buildLogoAsBigImage(imageSrc) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(24.0),
      child: Image.asset(
        imageSrc,
        fit: BoxFit.contain,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topCenter,
      ),
    );
  }

  void onIntroEnd() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.white),
      bodyTextStyle: TextStyle(fontSize: 19.0, color: Colors.white),
      pageColor: Colors.purpleAccent,
    );
    return openOnBoardingScreens == true
        ? IntroductionScreen(
            globalBackgroundColor: Colors.purpleAccent,
            globalHeader: Align(
              alignment: Alignment.topRight,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, right: 16),
                  child: _buildImage("assets/images/appLogo.png", 50),
                ),
              ),
            ),
            pages: [
              PageViewModel(
                  title: "Coins Trap",
                  body:
                      "Coins Trap is a concept that refers to the tendency of individuals to accumulate small amounts of money in the form of loose change or small denomination bills, rather than using or depositing them.",
                  image: _buildLogoAsBigImage("assets/images/appLogo.png"),
                  decoration: pageDecoration.copyWith(
                    contentMargin: const EdgeInsets.symmetric(horizontal: 16),
                    fullScreen: true,
                    bodyFlex: 2,
                    imageFlex: 3,
                  )),
              PageViewModel(
                  title: "Coins Trap",
                  body:
                      "Coins Trap habit often leads to a situation where individuals have a large amount of coins or small bills that are difficult to use or exchange.",
                  image: _buildLogoAsBigImage("assets/images/img2.png"),
                  decoration: pageDecoration.copyWith(
                    contentMargin: const EdgeInsets.symmetric(horizontal: 16),
                    fullScreen: true,
                    bodyFlex: 2,
                    imageFlex: 3,
                  )),
              PageViewModel(
                  title: "Coins Trap",
                  body:
                      "Additionally, it can be a hassle to keep track of and store large amounts of coins or small bills, leading to a sense of frustration and overwhelm.",
                  image: _buildLogoAsBigImage("assets/images/img3.png"),
                  decoration: pageDecoration.copyWith(
                    contentMargin: const EdgeInsets.symmetric(horizontal: 16),
                    fullScreen: true,
                    bodyFlex: 2,
                    imageFlex: 3,
                  )),
            ],
            onDone: onIntroEnd,
            onSkip: onIntroEnd,
            showSkipButton: true,
            nextFlex: 0,
            skipOrBackFlex: 0,
            skip: const Text(
              "Skip",
              style: TextStyle(color: Colors.white),
            ),
            next: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            done: const Text(
              "Done",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            controlsMargin: const EdgeInsets.all(16.0),
            controlsPadding: const EdgeInsets.all(4.0),
            dotsDecorator: DotsDecorator(
                size: const Size(10.0, 10.0),
                color: Colors.white,
                activeSize: const Size(22, 10),
                activeColor: Colors.purpleAccent,
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                )),
            dotsContainerDecorator: const ShapeDecoration(
                color: Colors.black54,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                )),
          )
        : Scaffold(
            body: _buildLogoAsBigImage("assets/images/appLogo.png"));
  }
}
