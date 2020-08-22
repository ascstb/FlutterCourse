import 'dart:async';

import 'package:form_validation/src/blocs/validators.dart';

class LoginBloc with Validators {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  //Insert data to the stream
  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  //Get Stream data
  Stream<String> get emailStream => _emailController.stream.transform(validateEmail);

  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validatePassword);

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
