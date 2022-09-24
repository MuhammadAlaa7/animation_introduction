import 'package:flutter/material.dart';

class MyAnimatedAlign extends StatefulWidget {
  const MyAnimatedAlign({Key? key}) : super(key: key);

  @override
  State<MyAnimatedAlign> createState() => _MyAnimatedAlignState();
}

class _MyAnimatedAlignState extends State<MyAnimatedAlign> {
  double dx = 0.0;
  double dy = 0.0;
  bool changeAlign = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('animated align'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          margin: const EdgeInsets.all(30.0),
          color: Colors.yellow[200],
          child: AnimatedAlign(
            duration: const Duration(seconds: 1),
            alignment: Alignment(
            changeAlign ? 1:0,
              changeAlign ? 1 : 0,
            ),
            child: const FlutterLogo(
              size: 70.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            changeAlign = !changeAlign;
          });
        },
        child: const Icon(
          Icons.align_horizontal_center,
        ),
      ),
    );
  }
}
