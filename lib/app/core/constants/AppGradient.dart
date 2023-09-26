
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
      begin: Alignment(-1.0, 1.0),
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
      begin: Alignment(-1.0, 1.0),
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
      begin: Alignment(-1.0, 1.0),
      end: Alignment(1.0, -1.0),
      colors: yellowColors
  );
  ////////////////////////////////**Grey**/////////////////////////////////////
  static LinearGradient curvedGreyGradient = LinearGradient(
      begin: Alignment(-1.0, -1.0),
      end: Alignment(1.0, 1.0),
      colors: greyColors
  );
  ////////////////////////////////**Grey**/////////////////////////////////////
  static LinearGradient curvedBlackGradient = LinearGradient(
      begin: Alignment(-1.0, -1.0),
      end: Alignment(1.0, 1.0),
      colors: blackColors
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

 List<Color> greyColors = [
  AppColor.greyGradient1,
  AppColor.greyGradient2,
];

List<Color> blackColors = [
  Color(0xFF000000).withOpacity(.6),
  Color(0xFF000000).withOpacity(.4077),
  Color(0xFF000000).withOpacity(.08),
];