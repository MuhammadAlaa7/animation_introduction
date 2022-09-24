import 'package:flutter/material.dart';

class MyAnimatedPositioned extends StatefulWidget {
  const MyAnimatedPositioned({Key? key}) : super(key: key);

  @override
  State<MyAnimatedPositioned> createState() => _MyAnimatedPositionedState();
}

class _MyAnimatedPositionedState extends State<MyAnimatedPositioned> {
  bool move = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Positioned'),
      ),
      body: Stack(
        children:  [
         const Center(
            child: Text(
              'بخ ',
              style: TextStyle(fontSize: 50.0 , fontWeight: FontWeight.bold),
            ),
         ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              curve: Curves.easeOutBack,
              top: move ? 500 : 300,
              right: 110,
              child: Container(
                width: 210,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.teal,
                ),
              ),
            ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {

            move  = ! move ;

          },
          );
        },
        child: const Icon(
          Icons.move_to_inbox,
        ),
      ),
    );
  }
}
