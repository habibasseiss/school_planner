import 'package:flutter/material.dart';

var theme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    foregroundColor: Colors.black,
    backgroundColor: Colors.grey[100],
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
  textTheme: ThemeData.dark().textTheme.copyWith(
        headline2: ThemeData.dark()
            .textTheme
            .headline2!
            .copyWith(fontSize: 16, fontWeight: FontWeight.normal),
      ),
);
