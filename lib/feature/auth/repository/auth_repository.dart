import 'dart:convert';

import 'package:flow_project/feature/auth/model/auth_state.dart';
import 'package:flow_project/shared/http/api_provider.dart';
import 'package:flow_project/shared/http/app_exception.dart';
import 'package:flow_project/shared/model/token.dart';
import 'package:flow_project/shared/model/user/user.dart';
import 'package:flow_project/shared/repository/token_repository.dart';
import 'package:flow_project/shared/repository/user_repository.dart';
import 'package:flow_project/shared/util/validator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AuthRepositoryProtocol {
  Future<AuthState> login(String email, String password);
  Future<AuthState> signUp(String email, String password);
  Future<AuthState> logOut();
}

final authRepositoryProvider = Provider((ref) => AuthRepository(ref.read));

class AuthRepository implements AuthRepositoryProtocol {
  AuthRepository(this._reader) {}

  late final ApiProvider _api = _reader(apiProvider);
  final Function _reader;

  @override
  Future<AuthState> login(String email, String password) async {
    if (!Validator.isValidPassWord(password)) {
      return const AuthState.error(
          AppException.errorWithMessage('Minimum 8 characters required'));
    }
    if (!Validator.isValidEmail(email)) {
      return const AuthState.error(
          AppException.errorWithMessage('Please enter a valid email address'));
    }
    final params = {
      'email': email,
      'password': password,
    };
    final loginResponse =
        await _api.post('token?grant_type=password', jsonEncode(params));

    return loginResponse.when(
      success: (success) async {
        final tokenRepository = _reader(tokenRepositoryProvider);
        final UserRepository userRepository = _reader(userRepositoryProvider);

        final token = Token.fromJson(success);
        final user = User.fromJson(success['user']);

        await tokenRepository.saveToken(token);
        await userRepository.saveUser(user);

        return const AuthState.loggedIn();
      },
      error: (error) {
        print(error);
        return AuthState.error(error);
      },
    );
  }

  @override
  Future<AuthState> signUp(String email, String password) async {
    if (!Validator.isValidPassWord(password)) {
      return const AuthState.error(
          AppException.errorWithMessage('Minimum 8 characters required'));
    }
    if (!Validator.isValidEmail(email)) {
      return const AuthState.error(
          AppException.errorWithMessage('Please enter a valid email address'));
    }
    final params = {
      'email': email,
      'password': password,
    };
    final loginResponse = await _api.post('sign_up', jsonEncode(params));

    return loginResponse.when(success: (success) async {
      final TokenRepository tokenRepository = _reader(tokenRepositoryProvider);

      final token = Token.fromJson(success);

      await tokenRepository.saveToken(token);

      return const AuthState.loggedIn();
    }, error: (error) {
      return AuthState.error(error);
    });
  }

  @override
  Future<AuthState> logOut() async {
    final TokenRepository tokenRepository = _reader(tokenRepositoryProvider);
    final UserRepository userRepository = _reader(userRepositoryProvider);

    await tokenRepository.remove();
    await userRepository.remove();
    return const AuthState.loggedOut();
  }
}
