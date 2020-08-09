import 'package:components_app/src/providers/menu_provider.dart';
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
          children: _createListItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _createListItems(List<dynamic> data) {
    print("HomePage_TAG: _createListItems: ");
    final List<Widget> options = [];

    data.forEach((route) {
      final widgetTemp = ListTile(
        title: Text(route["name"]),
        leading: Icon(
          Icons.account_circle,
          color: Colors.blue,
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {},
      );

      options..add(widgetTemp)..add(Divider());
    });

    return options;
  }
}
