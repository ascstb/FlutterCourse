import 'package:counter_app/src/pages/counter/counter_page.dart';
import 'package:flutter/material.dart';

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
      floatingActionButton: _createButtons(),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _onAddButtonClicked() {
    counter++;
    print("_onAddButtonClicked: $counter");
    _refreshUI();
  }

  void _onRestButtonClicked() {
    counter--;
    print("_onRestButtonClicked: $counter");
    _refreshUI();
  }

  void _onResetButtonClicked() {
    counter = 0;
    print("_onResetButtonClicked: $counter");
    _refreshUI();
  }

  void _refreshUI() {
    setState(() {});
  }

  Widget _createButtons() => Row(
        children: [
          SizedBox(
            width: 30,
          ),
          FloatingActionButton(
              child: Icon(Icons.exposure_zero),
              onPressed: _onResetButtonClicked),
          Expanded(child: SizedBox()),
          FloatingActionButton(
              child: Icon(Icons.remove), onPressed: _onRestButtonClicked),
          Expanded(child: SizedBox()),
          FloatingActionButton(
              child: Icon(Icons.add), onPressed: _onAddButtonClicked),
        ],
      );
}
