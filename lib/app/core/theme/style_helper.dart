import 'package:flutter/material.dart';

mixin StylesHelper {


  // = LinearGradient(
  //   colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  // ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  /////////////
  LinearGradient appLinearGradient(
      BuildContext context, {
        double opacity = 1,
        Axis axis = Axis.vertical,
        List<Color>? colors,
      }) {
    return LinearGradient(
      begin: axis == Axis.vertical
          ? AlignmentDirectional.topCenter
          : AlignmentDirectional.centerStart,
      end: axis == Axis.vertical
          ? AlignmentDirectional.bottomCenter
          : AlignmentDirectional.centerEnd,
      colors: colors ??
          [
            Color(0xFF4C91FF),
            Color(0xFF3E32D1),
          ],
    );
  }


  Color convertHexadecimalStringToColor({required String hexadecimal}) {
    String newHexadecimal = hexadecimal.substring(1);
    int newIntHexadecimal = int.parse('0xff$newHexadecimal');
    Color colorToSend = Color(newIntHexadecimal);
    return colorToSend;
  }
}