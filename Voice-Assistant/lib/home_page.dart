import 'package:allen/pellete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Rylan'),
          leading: const Icon(Icons.menu),
        ),
        body: Column(children: [
          Stack(children: [
            Center(
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.only(top: 4),
                decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle),
              ),
            ),
            Container(
              height: 123,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                    '/assets/images/virtualAssistant.png',
                  ))),
            )
          ]),
          // Chat Bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration:
                BoxDecoration(border: Border.all(color: Pallete.borderColor)),
            child: const Text('Good Morning, what can I do for you?',
                style: TextStyle(
                  color: Pallete.mainFontColor,
                )),
          )
        ]));
  }
}
