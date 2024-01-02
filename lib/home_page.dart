import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 17.0, right: 17, top: 17),
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
                text: 'Lesson 1',
                subtitleText: 'How are you?',
                color: const Color(0XFFBAB1C7).withOpacity(0.4),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    child: Image.asset('assets/images/image2.jpg',
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LessonWidget(
                text: 'Lesson 2',
                subtitleText: 'Pronounciation?',
                color: const Color(0XFFB95942).withOpacity(0.4),
              ),
              LessonWidget(
                text: 'Lesson 3',
                subtitleText: 'Demostrative pronouns',
                color: const Color(0XFF513EC8).withOpacity(0.4),
              ),
              LessonWidget(
                text: 'Lesson 4',
                subtitleText: 'Present continuous',
                color: const Color(0XFFA3A2A3).withOpacity(0.4),
              ),
              Spacer(),
              Center(
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 210, height: 60),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9)),
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
    required this.text,
    required this.subtitleText,
    required this.color,
  });
  final String text;
  final String subtitleText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        text,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        subtitleText,
        style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.black.withOpacity(0.5)),
      ),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: const Center(
          child: Text(
            '0%',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
