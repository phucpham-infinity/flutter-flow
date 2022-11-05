import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_start_state.freezed.dart';

@freezed
class AppStartState with _$AppStartState {
  const factory AppStartState.initial() = _Initial;

  const factory AppStartState.isOnboard() = _IsOnboard;

  const factory AppStartState.unauthenticated(String? message) =
      _Unauthenticated;

  const factory AppStartState.internetUnAvailable() = _InternetUnAvailable;

  const factory AppStartState.authenticated() = AppAuthenticated;
}
