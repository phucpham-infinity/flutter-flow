import 'package:flow_project/shared/http/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loggedIn() = _LoggedIn;
  const factory AuthState.loggedOut() = _LoggedOut;
  const factory AuthState.signUp() = _SignUp;
  const factory AuthState.forgotPassword() = _ForgotPassword;
  const factory AuthState.error(AppException error) = _Error;
}
