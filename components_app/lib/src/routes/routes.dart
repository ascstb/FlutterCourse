import 'package:components_app/src/pages/alert_page.dart';
import 'package:components_app/src/pages/animated_container.dart';
import 'package:components_app/src/pages/avatar_page.dart';
import 'package:components_app/src/pages/card_page.dart';
import 'package:components_app/src/pages/home_page.dart';
import 'package:components_app/src/pages/input_page.dart';
import 'package:components_app/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAppRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
      "alert": (BuildContext context) => AlertPage(),
      "avatar": (BuildContext context) => AvatarPage(),
      "card": (BuildContext context) => CardPage(),
      "animatedContainer": (BuildContext context) => AnimatedContainerPage(),
      "inputs": (BuildContext context) => InputPage(),
      "list": (BuildContext context) => SliderPage(),
    };
