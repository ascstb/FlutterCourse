import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Temp"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("List Tile Title"),
            subtitle: Text("List Tile Subtitle"),
            trailing: Text("List Tile trailing"),
          ),
          Divider(),
          ListTile(
            title: Text("List Tile Title"),
          )
        ],
      ),
    );
  }
}
