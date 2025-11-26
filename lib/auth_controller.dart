import './auth_service.dart';
class AuthController {
  final AuthService authService;

  AuthController(this.authService);

  Future<String> login(String email, String password) async {
    try {
      final token = await authService.signIn(email, password);
      return token;
    } catch (e) {
      return "ERROR: $e";
    }
  }
}