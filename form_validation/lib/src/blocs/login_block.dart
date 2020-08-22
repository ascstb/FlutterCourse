import 'dart:async';

import 'package:form_validation/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //region Insert data to the stream
  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  //endregion

  //region Get Stream data
  Stream<String> get emailStream =>
      _emailController.stream.transform(validateEmail);

  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validatePassword);

  //endregion

  Stream<bool> get validFormStream =>
      Rx.combineLatest2(emailStream, passwordStream, (e, p) => true);

  //region Get Latest values from Streams
  String get email => _emailController.value;

  String get password => _passwordController.value;

  //endregion

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
