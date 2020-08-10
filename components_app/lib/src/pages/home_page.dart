import 'package:components_app/src/providers/menu_provider.dart';
import 'package:components_app/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("HomePage_TAG: build: ");
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _createListItems(context, snapshot.data),
        );
      },
    );
  }

  List<Widget> _createListItems(BuildContext context, List<dynamic> data) {
    print("HomePage_TAG: _createListItems: ");
    final List<Widget> options = [];

    data.forEach((option) {
      final widgetTemp = ListTile(
        title: Text(option["name"]),
        leading: getIcon(option["icon"]),
        trailing: getIcon("keyboard-arrow-right"),
        onTap: () {
          /*final route = MaterialPageRoute(builder: (context) {
            switch (option["route"]) {
              case "alert":
                return AlertPage();
              case "avatar":
                return AvatarPage();
            }

            return AlertPage();
          });
          Navigator.push(context, route);*/
          Navigator.pushNamed(context, option["route"]);
        },
      );
      options..add(widgetTemp)..add(Divider());
    });

    return options;
  }
}
