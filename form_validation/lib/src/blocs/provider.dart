import 'package:flutter/material.dart';
import 'package:form_validation/src/blocs/login_block.dart';
export 'package:form_validation/src/blocs/login_block.dart';

class Provider extends InheritedWidget {
  static Provider _instance;

  factory Provider({Key key, Widget child}) {
    if(_instance == null) {
      _instance = Provider._internal(key: key, child: child);
    }

    return _instance;
  }

  final loginBloc = LoginBloc();

  //Provider({Key key, Widget child}) : super(key: key, child: child);
  Provider._internal({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static LoginBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
  }
}
