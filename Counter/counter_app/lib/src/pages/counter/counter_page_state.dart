import 'package:flutter/material.dart';

import 'package:counter_app/src/pages/counter/counter_page.dart';

class CounterPageState extends State<CounterPage> {
  final TextStyle txtStyle = TextStyle(fontSize: 25);
  int counter = 0;

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
    counter++;
    print("onButtonClicked: $counter");
    refreshUI();
  }

  void refreshUI() {
    setState(() {});
  }
}
