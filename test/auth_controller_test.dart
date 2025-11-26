import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mobile_lab14/auth_controller.dart';
import './mocks.mocks.dart';

void main() {
  late MockAuthService mockAuthService;
  late AuthController authController;

  setUp(() {
    mockAuthService = MockAuthService();
    authController = AuthController(mockAuthService);
  });

  test("Successful login returns token", () async {
    when(
      mockAuthService.signIn("smth@gmail.com", "123456"),
    ).thenAnswer((_) async => "SOME_RANDOM_TOKEN");

    final result = await authController.login("smth@gmail.com", "123456");

    // Assert
    expect(result, "SOME_RANDOM_TOKEN");
    verify(mockAuthService.signIn("smth@gmail.com", "123456")).called(1);
  });

  test("Login failure returns error string", () async {
    when(
      mockAuthService.signIn("abcd@gmail.com", "wrong"),
    ).thenThrow(Exception("Invalid credentials"));

    final result = await authController.login("abcd@gmail.com", "wrong");

    expect(result.contains("ERROR"), true);
    expect(result.contains("Invalid credentials"), true);

    verify(mockAuthService.signIn("abcd@gmail.com", "wrong")).called(1);
  });
}
