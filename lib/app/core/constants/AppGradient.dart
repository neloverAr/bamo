
import 'package:bamo/app/core/values/colors.dart';
import 'package:flutter/cupertino.dart';

class AppGradient{

  static const verticalBlueGradient = LinearGradient(
    begin:AlignmentDirectional.topCenter,
    end:AlignmentDirectional.bottomCenter,
      colors: blueColors
  );

  static const horizontalBlueGradient = LinearGradient(
      begin:AlignmentDirectional.centerStart,
      end:AlignmentDirectional.centerEnd,
      colors: blueColors
  );
  static const curvedBlueGradient = LinearGradient(
      begin: Alignment(-1.0, -1),
      end: Alignment(1.0, -1.0),
      colors: blueColors
  );
////////////////////////////////**Green**/////////////////////////////////////
  static const verticalGreenGradient = LinearGradient(
      begin:AlignmentDirectional.topCenter,
      end:AlignmentDirectional.bottomCenter,
      colors: greenColors
  );
  static const horizontalGreenGradient = LinearGradient(
      begin:AlignmentDirectional.centerStart,
      end:AlignmentDirectional.centerEnd,
      colors: greenColors
  );
  static const curvedGreenGradient = LinearGradient(
      begin: Alignment(-1.0, -1),
      end: Alignment(1.0, -1.0),
      colors: greenColors
  );
  ////////////////////////////////**Yellow**/////////////////////////////////////
  static const verticalYellowGradient = LinearGradient(
      begin:AlignmentDirectional.topCenter,
      end:AlignmentDirectional.bottomCenter,
      colors: yellowColors
  );
  static const horizontalYellowGradient = LinearGradient(
      begin:AlignmentDirectional.centerStart,
      end:AlignmentDirectional.centerEnd,
      colors: yellowColors
  );
  static const curvedYellowGradient = LinearGradient(
      begin: Alignment(-1.0, -1),
      end: Alignment(1.0, -1.0),
      colors: yellowColors
  );
}

const List<Color> greenColors = [
  AppColor.secondaryColor,
  AppColor.secondaryLightColor,
];

const List<Color> blueColors = [
  AppColor.primaryColor,
  AppColor.primaryLightColor,
];

const List<Color> yellowColors = [
  AppColor.yellowColor,
  AppColor.yellowLightColor,
];