// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:languageschool/home_page.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  int currentIndex = 0;
  final PageController pageController = PageController(initialPage: 2);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image1.jpg'),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildIndicator(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Stand Up',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Are you ready to learn languages \n easily in the funniest way?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(width: 210, height: 60),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1),
      height: isActive ? 8 : 10,
      width: isActive ? 30 : 10,
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
          color: isActive ? Colors.orange : Colors.orange.withOpacity(0.2),
          borderRadius: isActive
              ? const BorderRadius.all(Radius.circular(10))
              : const BorderRadius.all(Radius.circular(15))),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicator = [];
    for (var i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicator.add(_indicator(true));
      } else {
        indicator.add(_indicator(false));
      }
    }
    return indicator;
  }
}
