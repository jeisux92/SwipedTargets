import 'package:flutter/material.dart';
import 'package:movies/src/pages/home_page.dart';

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
  };
}
