import 'package:flow_project/app/state/app_start_state.dart';
import 'package:flow_project/feature/auth/model/auth_state.dart';
import 'package:flow_project/feature/auth/provider/auth_provider.dart';
import 'package:flow_project/shared/repository/token_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStartProvider =
    StateNotifierProvider<AppStartNotifier, AppStartState>((ref) {
  late AppStartState appStartState;
  final loginState = ref.watch(authProvider);

  appStartState = loginState is AppAuthenticated
      ? const AppStartState.authenticated()
      : const AppStartState.initial();

  return AppStartNotifier(
    appStartState,
    ref.read,
    loginState,
  );
});

class AppStartNotifier extends StateNotifier<AppStartState> {
  AppStartNotifier(
    AppStartState appStartState,
    this._reader,
    this._authState,
  ) : super(appStartState) {
    _init();
  }
  late final TokenRepository _tokenRepository =
      _reader(tokenRepositoryProvider);
  final AuthState _authState;
  final Function _reader;

  void _init() async {
    _authState.maybeWhen(
        loggedIn: () {
          state = const AppStartState.authenticated();
        },
        orElse: () {});

    // _homeState.maybeWhen(
    //     loggedOut: () {
    //       state = const AppStartState.unauthenticated();
    //     },
    //     orElse: () {});

    final token = await _tokenRepository.fetchToken();
    if (token != null) {
      if (mounted) {
        state = const AppStartState.authenticated();
      }
    } else {
      if (mounted) {
        state = const AppStartState.unauthenticated();
      }
    }
  }
}
