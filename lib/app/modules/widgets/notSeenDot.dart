import 'package:flutter/material.dart';

import '../../core/constants/AppGradient.dart';

class NotSeenDot extends StatelessWidget {
  const NotSeenDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,width: 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: AppGradient.curvedBlueGradient
      ),
    );
  }
}
