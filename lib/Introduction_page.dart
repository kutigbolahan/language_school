// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/images/image1'))),
          )
        ],
      ),
    );
  }
}
