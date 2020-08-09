import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView(
      children: _createListItems(),
    );
  }

  List<Widget> _createListItems() {
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
