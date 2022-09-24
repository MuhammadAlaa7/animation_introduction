import 'dart:math';
import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {

  double  _width = 50.0;
  double _height = 50.0;
  BorderRadiusGeometry radius = BorderRadius.circular(8);
  Color _color = Colors.green;

  bool _visible = true;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container '),
      ),
      body:  Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: radius,
            color: _color,
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1.0);
            radius = BorderRadius.circular(random.nextInt(100).toDouble());




            _visible = !_visible;
          });
        },
        child: const Icon(
          Icons.play_circle_fill,
        ),
      ),
    );
  }
}
