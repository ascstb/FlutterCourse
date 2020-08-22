import 'dart:async';

class LoginBloc {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  //Insert data to the stream
  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  //Get Stream data
  Stream<String> get emailStream => _emailController.stream;

  Stream<String> get passwordStream => _passwordController.stream;

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
