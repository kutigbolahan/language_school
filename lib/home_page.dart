import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:languageschool/choose_language.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
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
          padding: const EdgeInsets.only(right: 17.0, left: 17, top: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'A2 - Elementary',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              LessonWidget(
                titleText: 'Lesson 1',
                subtitleText: 'How are you?',
                color: const Color(0XFFBAB1C7).withOpacity(0.5),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  child: Image.asset(
                    'assets/images/image2.jpg',
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LessonWidget(
                titleText: 'Lesson 2',
                subtitleText: 'Pronounciation',
                color: const Color(0XFF513Ec8).withOpacity(0.3),
              ),
              LessonWidget(
                titleText: 'Lesson 3',
                subtitleText: 'Demostrative pronouns',
                color: const Color(0XFFB95942).withOpacity(0.3),
              ),
              LessonWidget(
                titleText: 'Lesson 4',
                subtitleText: 'Present continuous',
                color: const Color(0XFFA3A2A3).withOpacity(0.3),
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
                          builder: (context) => const ChooseLanguagePage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Next',
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

class LessonWidget extends StatelessWidget {
  const LessonWidget({
    super.key,
    required this.titleText,
    required this.subtitleText,
    required this.color,
  });
  final String titleText;
  final String subtitleText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: const Center(
          child: Text(
            '0%',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      title: Text(
        titleText,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        subtitleText,
        style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.5)),
      ),
    );
  }
}
