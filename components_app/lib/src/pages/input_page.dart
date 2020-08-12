import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Inputs"),
      ),
      body: ListView(
        children: [
          _createInputs(),
          Divider(),
          _createPerson(),
        ],
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      ),
    );
  }

  Widget _createInputs() {
    print("_InputPageState_TAG: _createInputs: ");
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text("Characters ${_name.length}"),
          hintText: "Your name",
          labelText: "First Name",
          helperText: "Just the first name",
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (value) {
        print("_InputPageState_TAG: _createInputs: onChange: $value");
        setState(() {
          _name = value;
        });
      },
    );
  }

  Widget _createPerson() {
    print("_InputPageState_TAG: _createPerson: ");
    return ListTile(
      title: Text("First name is: $_name"),
    );
  }
}
