import 'dart:math';

import 'package:flutter/material.dart';

class MyTween extends StatefulWidget {
  const MyTween({Key? key}) : super(key: key);

  @override
  State<MyTween> createState() => _MyTweenState();
}

class _MyTweenState extends State<MyTween> {
  double value = 0.0;
  double angle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explicit animation through tween'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // to build an explicit animation of your own
            TweenAnimationBuilder<double>(
              // must configure the type of the value in generic
                          // tween is the begin and the end of the values >>> range
              // tween is an abbreviation for between
                tween: Tween(begin: 0, end: angle),

                duration: const Duration(seconds: 3),
                builder: (_, angle, child) =>  Transform.rotate(
                  angle: angle * (pi / 180),
                               // builder >> apply transform on the child >> container
                child: child,
                ),

                  child: Container(
                    width: 300,
                    height: 200,
                    color: Colors.teal,
                  ),
                ),
            const SizedBox(
              height: 90.0,
            ),
            Text(
              'the value is $value',
              style: const TextStyle(
                fontSize: 30.0,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Slider(
              min: 0,
              max: 360,
              divisions: 4,
              value: value,
              onChanged: (val) {
                setState(
                      () {
                    value = val;
                    angle = value;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
