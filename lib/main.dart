import 'dart:math';
import 'dart:ui';

import 'package:animation/animated_container.dart';
import 'package:animation/animated_opacity.dart';
import 'package:animation/animated_positioned.dart';
import 'package:flutter/material.dart';

import 'animated_align.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home:  MyAnimatedAlign(),
    );
  }
}


