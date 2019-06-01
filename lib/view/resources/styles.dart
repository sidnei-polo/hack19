import 'package:flutter/cupertino.dart';
import 'package:hack_19/view/resources/theme_colors.dart';

abstract class Styles {

  static const largeBoldTextStyle = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold
  );

  static const boldTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold
  );

  static const primaryTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600
  );

  static const secondaryTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: ThemeColors.grey
  );

  static const pillTextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: ThemeColors.white
  );
}