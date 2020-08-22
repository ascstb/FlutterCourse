import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _createBackground(context),
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
}
