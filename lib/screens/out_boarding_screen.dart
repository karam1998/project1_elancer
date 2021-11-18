import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/moduls/onboarding_model.dart';
import 'package:project1/screens/category_screens/nave_bar_screens/home_screen.dart';
import 'package:project1/widget/out_boarding_content.dart';
import 'package:project1/widget/out_boarding_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  List<OnboardingModel> screen = <OnboardingModel>[
    OnboardingModel(imag: 'images/learn.png', text: 'اعثر على شخصيتك المفضله ...'),
    OnboardingModel(imag: 'images/readingbook.png', text: 'على مختلف وسائل التواصل الاجتماعيه..'),
    OnboardingModel(imag: 'images/manthumbs.png', text: 'فيسبوك!.. انستغرام!.. تويتر!.. يوتيوب! جميعهم في مكان واحد'),
  ];
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Visibility(
              visible: _currentPage < 2,
              replacement: TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/login_screen'),
                child: const Text(
                  'البدء',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,fontFamily: 'NotoNaskhArabic'),
                ),
              ),
              child: TextButton(
                onPressed: () => _pageController.animateToPage(
                  2,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                ),
                child: const Text('تخطى',style: TextStyle(fontFamily: 'NotoNaskhArabic'),),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
                minWidth: 0,
                maxWidth: double.infinity,
                minHeight: 0,
                maxHeight: 600),
            child: PageView.builder(
              itemCount: screen.length,
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(screen[index].imag),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              _pageController.previousPage(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.easeInOut);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color:
                                  _currentPage > 0 ? Colors.black : Colors.grey,
                            ),
                          ),
                          Visibility(
                            visible: _currentPage < 2,
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            child: IconButton(
                              onPressed: () {
                                _pageController.nextPage(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeIn);
                              },
                              icon: const Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutBoardingIndicator(
                              marginEnd: 10, selected: _currentPage == 0),
                          OutBoardingIndicator(
                              marginEnd: 10, selected: _currentPage == 1),
                          OutBoardingIndicator(selected: _currentPage == 2),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Visibility(
                        visible: _currentPage == 2,
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                            onPressed: () => Navigator.pushReplacementNamed(
                                context, '/login_screen'),
                            child: const Text(
                              'بداية',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 50),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
