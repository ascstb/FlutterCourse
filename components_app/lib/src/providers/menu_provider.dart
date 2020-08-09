import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider();

  Future<List<dynamic>> loadData() async {
    print("MenuProvider_TAG: _loadData: ");
    final response = await rootBundle.loadString("data/menu_opts.json");

    Map dataMap = json.decode(response);
    options = dataMap["routes"];

    return options;
  }
}

final menuProvider = _MenuProvider();
