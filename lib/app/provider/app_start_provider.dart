import 'package:flow_project/app/state/app_start_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStartProvider =
    StateNotifierProvider<AppStartNotifier, AppStartState>((ref) {
  late AppStartState appStartState;
  appStartState = const AppStartState.authenticated();

  return AppStartNotifier(appStartState);
});

class AppStartNotifier extends StateNotifier<AppStartState> {
  AppStartNotifier(AppStartState appStartState) : super(appStartState) {
    _init();
  }

  void _init() async {}
}
