import 'package:flow_project/app/state/app_start_state.dart';
import 'package:flow_project/feature/auth/model/auth_state.dart';
import 'package:flow_project/feature/auth/provider/auth_provider.dart';
import 'package:flow_project/shared/http/api_provider.dart';
import 'package:flow_project/shared/model/user/user.dart';
import 'package:flow_project/shared/repository/onboard_repository.dart';
import 'package:flow_project/shared/repository/token_repository.dart';
import 'package:flow_project/shared/repository/user_repository.dart';
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

  late final ApiProvider _api = _reader(apiProvider);

  late final OnboardRepository _onboardRepository =
      _reader(onboardRepositoryProvider);

  final AuthState _authState;
  final Function _reader;

  void _init() async {
    _authState.maybeWhen(
      loggedIn: () {
        state = const AppStartState.authenticated();
      },
      loggedOut: () {
        state = const AppStartState.unauthenticated('Logout!');
      },
      orElse: () {},
    );

    final _onBoard = await _onboardRepository.fetchOnboard();

    if (_onBoard != null && _onBoard.is_onboard == 1 || _onBoard == null) {
      if (mounted) {
        state = const AppStartState.isOnboard();
      }
      return;
    }

    final token = await _tokenRepository.fetchToken();

    if (token == null) {
      if (mounted) {
        state = const AppStartState.unauthenticated(null);
      }
      return;
    }

    final user = await _api.get('user');

    user.when(
      success: (success) async {
        final UserRepository userRepository = _reader(userRepositoryProvider);

        final user = User.fromJson(success);
        await userRepository.saveUser(user);
        if (mounted) {
          state = const AppStartState.authenticated();
        }
      },
      error: (error) {
        var _message = 'Something went wrong!';
        error.when(
          connectivity: () {
            _message = 'app_start__connectivity: ${_message} ';
          },
          unauthorized: () {
            _message = 'app_start__unauthorized: ${_message} ';
          },
          errorWithMessage: (message) {
            _message = message;
          },
          error: () {
            _message = 'app_start__error: ${_message} ';
          },
        );
        if (mounted) {
          state = AppStartState.unauthenticated(_message);
        }
      },
    );
  }
}
