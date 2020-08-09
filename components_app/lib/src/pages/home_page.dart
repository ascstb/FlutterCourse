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
    print("HomePage_TAG: _createList: ");
    print(menuProvider.options);

    return ListView(
      children: _createListItems(),
    );
  }

  List<Widget> _createListItems() {
    print("HomePage_TAG: _createListItems: ");
    return [
      ListTile(
        title: Text("Hello World"),
      ),
      Divider(),
      ListTile(
        title: Text("Hello World"),
      ),
      Divider(),
      ListTile(
        title: Text("Hello World"),
      ),
    ];
  }
}
