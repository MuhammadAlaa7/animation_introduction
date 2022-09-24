import 'dart:math';
import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<MyAnimatedOpacity> createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {

  bool _visible = true;
  Random random = Random();

  BorderRadiusGeometry radius2 = BorderRadius.circular(8);
  final _color2 = Colors.lightBlueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity '),
      ),
      body:  Center(
        child:   AnimatedOpacity(
          opacity: _visible == true ? 1 : 0,
          duration: const Duration(milliseconds: 1300),
          curve: Curves.linear,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: radius2,
              color: _color2,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {

            _visible = !_visible;

          });
        },
        child: const Icon(
          Icons.flip,
        ),
      ),
    );
  }
}
