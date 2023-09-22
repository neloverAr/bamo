import 'package:flutter/cupertino.dart';

class PageData {
  String icon;
  Widget page;
  String? title;
  PageData(
      {
        required this.page,
        required this.icon,
        this.title,
      });
}