import 'package:flutter/material.dart';
import 'package:form_validation/src/blocs/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _createBackground(context),
          _loginForm(context),
        ],
      ),
    );
  }

  Widget _createBackground(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final purpleBackground = Container(
      height: size.height * .4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(63, 63, 156, 1.0),
            Color.fromRGBO(90, 70, 178, 1.0)
          ],
        ),
      ),
    );

    final circle = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );

    return Stack(
      children: [
        purpleBackground,
        Positioned(top: 90, left: 30, child: circle),
        Positioned(top: -40, right: -30, child: circle),
        Positioned(bottom: -50, right: -10, child: circle),
        Positioned(bottom: 120, right: 20, child: circle),
        Positioned(bottom: -50, left: -20, child: circle),
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: [
              Icon(Icons.person_pin_circle, color: Colors.white, size: 100.0),
              SizedBox(height: 10.0, width: double.infinity),
              Text("Arturo Sanchez",
                  style: TextStyle(color: Colors.white, fontSize: 25.0))
            ],
          ),
        )
      ],
    );
  }

  Widget _loginForm(BuildContext context) {
    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              height: 180,
            ),
          ),
          Container(
            width: size.width * .85,
            padding: EdgeInsets.symmetric(vertical: 50.0),
            margin: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 3.0),
                ]),
            child: Column(
              children: [
                Text("Login", style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 60.0),
                _createEmail(bloc),
                SizedBox(height: 30.0),
                _createPassword(bloc),
                SizedBox(height: 30.0),
                _createLoginButton(bloc)
              ],
            ),
          ),
          Text("Forgot your password?"),
          SizedBox(height: 100.0)
        ],
      ),
    );
  }

  _createEmail(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.alternate_email, color: Colors.deepPurple),
              hintText: "r2@r2devpros.com",
              labelText: "Email Address",
              counterText: snapshot.data,
              errorText: snapshot.error,
            ),
            onChanged: bloc.changeEmail,
          ),
        );
      },
    );
  }

  _createPassword(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock_outline, color: Colors.deepPurple),
              labelText: "Password",
              counterText: snapshot.data,
              errorText: snapshot.error,
            ),
            onChanged: bloc.changePassword,
          ),
        );
      },
    );
  }

  _createLoginButton(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.validFormStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text("Login"),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 0.0,
          color: Colors.deepPurple,
          textColor: Colors.white,
          onPressed: snapshot.hasData ? () => _login(context, bloc) : null,
        );
      },
    );
  }

  _login(BuildContext context, LoginBloc bloc) {
    Navigator.pushReplacementNamed(context, "home");
  }
}
