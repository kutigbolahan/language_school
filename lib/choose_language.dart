import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseLangaugePage extends StatelessWidget {
  const ChooseLangaugePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              CupertinoIcons.slider_horizontal_3,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Choose your \nlanguage level',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 240,
                padding: const EdgeInsets.only(
                    top: 30, left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0XFF513Ec8)),
                child: Column(
                  children: [
                    Text(
                      'A1 - Basic',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.3)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 0.7,
                      color: Colors.white.withOpacity(0.4),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'A2 - Elementary',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 0.7,
                      color: Colors.white.withOpacity(0.4),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'B1 - Pre-intermediate',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.4)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'B2 - Intermediate',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.2)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                'Or take a test to \ndetermine the level. it will \ntake about 10 minutes.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const Spacer(),
              Center(
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 210, height: 60),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ChooseLangaugePage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Start test',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
