import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double  _width = 50.0;
  double _height = 50.0;
   BorderRadiusGeometry radius = BorderRadius.circular(8);
  Color _color = Colors.green;

  Random random = Random();

  bool _visible = true;
  BorderRadiusGeometry radius2 = BorderRadius.circular(8);
  final _color2 = Colors.lightBlueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                borderRadius: radius,
                color: _color,
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            const SizedBox(height: 100,),
            AnimatedOpacity(
                opacity: _visible == true ? 1 : 0,
                duration: const Duration(milliseconds: 1300) ,
                 curve: Curves.linear,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: radius2,
                    color: _color2,
                  ),


                ) ,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _width = random.nextInt(300).toDouble();
            _height= random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1.0);
            radius = BorderRadius.circular(random.nextInt(100).toDouble());
/*

            _width = _width == 50.0? 200:50;
            _height = _height== 50.0? 200:50;
            _color  = _color == Colors.green? Colors.red: Colors.green;
*/

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
