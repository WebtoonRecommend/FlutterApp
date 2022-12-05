import 'package:application4/presentation/start_login_screen/start_login_screen.dart';
import 'package:test/test.dart';

void main() {
  final startLoginScreen = StartLoginScreen();
  print("instance created");
  test('id validation test', () {
    var string = '1111';
    expect(startLoginScreen.idValidator(string), equals(null));
  });

  test('id validation test', () {
    var string = '12';
    expect(startLoginScreen.idValidator(string), equals('Password must be at least 7 characters long.'));
  });

  test('id validation test', () {
    var string = '333';
    expect(startLoginScreen.idValidator(string), equals('Password must be at least 7 characters long.'));
  });

  test('id validation test', () {
    var string = 'simsosimso';
    expect(startLoginScreen.idValidator(string), equals(null));
  });

  test('id validation test', () {
    var string = '55555';
    expect(startLoginScreen.idValidator(string), equals(null));
  });
}