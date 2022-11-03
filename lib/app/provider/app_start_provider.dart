import 'package:flow_project/app/function/getMe.dart';
import 'package:flow_project/app/state/app_start_state.dart';
import 'package:flow_project/feature/auth/model/auth_state.dart';
import 'package:flow_project/feature/auth/provider/auth_provider.dart';
import 'package:flow_project/shared/http/api_provider.dart';
import 'package:flow_project/shared/repository/token_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStartProvider =
    StateNotifierProvider<AppStartNotifier, AppStartState>((ref) {
  late AppStartState appStartState;
  final loginState = ref.watch(authProvider);

  appStartState = loginState is AppAuthenticated
      ? const AppStartState.authenticated()
      : const AppStartState.initial();

  // appStartState = const AppStartState.authenticated();

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
    final user = await getMe(_api);

    user.when(
      success: (success) {
        if (mounted) {
          state = const AppStartState.authenticated();
        }
      },
      error: (error) {
        error.when(
          connectivity: () {},
          unauthorized: () {},
          errorWithMessage: (message) {
            print(message);
          },
          error: () {},
        );
        if (mounted) {
          state = const AppStartState.unauthenticated();
        }
      },
    );
  }
}
