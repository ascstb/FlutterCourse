import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = "";
  String _email = "";
  String _password = "";
  String _date = "";
  TextEditingController _inputFieldDateController = TextEditingController();

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
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
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
      subtitle: Text("Email: $_email"),
    );
  }

  Widget _createEmail() {
    print("_InputPageState_TAG: _createEmail: ");
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: "Your email",
          labelText: "Email Address",
          helperText: "Just the email address",
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) =>
          setState(() {
            _email = value;
          }),
    );
  }

  Widget _createPassword() {
    print("_InputPageState_TAG: _createPassword: ");
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: "Your password",
          labelText: "Password",
          helperText: "Just the password",
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)),
      obscureText: true,
      onChanged: (value) =>
          setState(() {
            _password = value;
          }),
    );
  }

  Widget _createDate(BuildContext context) {
    print("_InputPageState_TAG: _createDate: ");
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: "Your date of birth",
          labelText: "Date of birth",
          helperText: "Date of birth",
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    print("_InputPageState_TAG: _selectDate: ");
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2025)
    );

    if(picked != null) {
      setState(() {
        _date = picked.toString().substring(0, 10);
        _inputFieldDateController.text = _date;
      });
    }
  }
}
