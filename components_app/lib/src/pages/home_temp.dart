import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ["One", "Two", "Three", "Four", "Five"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Temp"),
      ),
      body: ListView(
        children: _createItemsShort(),
      ),
    );
  }

  /*List<Widget> _createItems() {
    List<Widget> result = List<Widget>();

    for (int i = 0; i < options.length; i++) {
      result
        ..add(ListTile(
          title: Text(options[i]),
          trailing: Text("List Item $i"),
        ))
        ..add(Divider());
    }

    return result;
  }*/

  List<Widget> _createItemsShort() => options
      .map((e) => Column(
            children: [
              ListTile(
                title: Text(e),
                subtitle: Text("List item ${options.indexOf(e)}"),
                leading: Icon(Icons.linear_scale),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: _onItemClicked,
              ),
              Divider()
            ],
          ))
      .toList();

  void _onItemClicked() {
    print("HomePageTemp_TAG: _onItemClicked: ");
  }
}
