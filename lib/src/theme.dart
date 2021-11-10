import 'package:flutter/material.dart';

var theme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    color: Colors.grey[100],
    titleTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    actionsIconTheme: const IconThemeData(
      color: Colors.black,
    ),
    elevation: 0,
    shape: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 1)),
  ),
  textTheme: ThemeData.light().textTheme.copyWith(
        headline2: ThemeData.light()
            .textTheme
            .headline2!
            .copyWith(fontSize: 16, fontWeight: FontWeight.normal),
      ),
);
var darkTheme = ThemeData.dark().copyWith(
    // appBarTheme: AppBarTheme(
    //   color: ThemeData.dark().scaffoldBackgroundColor,
    //   elevation: 0,
    // ),
    );
