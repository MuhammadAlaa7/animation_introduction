import 'package:flutter/material.dart';

class Like extends StatelessWidget {
  const Like({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LikeButton(),
    );
  }
}
