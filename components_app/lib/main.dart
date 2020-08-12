import 'package:components_app/src/pages/home_page.dart';
import 'package:components_app/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("MyApp_TAG: build: ");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [const Locale("en", "US"), const Locale("es", "MX")],
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print("MyApp_TAG: build: onGenerateRoute: ${settings.name}");
        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },
    );
  }
}
