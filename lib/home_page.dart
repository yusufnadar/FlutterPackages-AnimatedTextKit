import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var liste = [Colors.red, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text Kit'),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Hello',
                speed: const Duration(milliseconds: 100),
              ),
              FadeAnimatedText(
                'Selam Dünya',
                duration: const Duration(seconds: 2),
              ),
              ColorizeAnimatedText('Hello World',
                  textStyle: const TextStyle(fontSize: 20),
                  colors: liste,
                  textDirection: TextDirection.rtl)
            ],
            onNextBeforePause: (index, value) {
              print(index);
            },
            onNext: (index, value) {
              print('ilerledi $index $value');
            },
            pause: const Duration(seconds: 1),
            totalRepeatCount: 1,
            displayFullTextOnTap: true,
            onTap: () {
              print('tıklandı');
            },
            onFinished: () {
              print('Bitti');
            },
          ),
        ),
      ),
    );
  }
}
