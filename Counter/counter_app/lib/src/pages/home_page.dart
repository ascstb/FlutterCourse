import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle txtStyle = TextStyle(fontSize: 25);
  final int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Clicks: ",
                style: txtStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: txtStyle,
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Click",
        child: Icon(Icons.add),
        onPressed: onButtonClicked,
      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void onButtonClicked() {
    print("onButtonClicked: $counter");
  }
}
