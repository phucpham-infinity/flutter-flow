import 'package:flow_project/shared/constants/store_key.dart';
import 'package:flow_project/shared/model/onboard/onboard.dart';
import 'package:flow_project/shared/util/platform_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class OnboardRepositoryProtocol {
  Future<void> remove();
  Future<void> saveOnboard(Onboard onboard);
  Future<Onboard?> fetchOnboard();
}

final onboardRepositoryProvider = Provider<OnboardRepository>((ref) {
  return OnboardRepository(ref);
});

class OnboardRepository implements OnboardRepositoryProtocol {
  OnboardRepository(this.ref) {}

  late final PlatformType _platform = ref.read(platformTypeProvider);
  final Ref ref;
  Onboard? _onboard;

  @override
  Future<void> remove() async {
    _onboard = null;
    final prefs = await SharedPreferences.getInstance();

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.Android ||
        _platform == PlatformType.Linux) {
      const storage = FlutterSecureStorage();
      try {
        await storage.delete(key: StoreKey.onboard.toString());
      } on Exception catch (e) {}
    } else {
      await prefs.remove(StoreKey.onboard.toString());
    }

    await prefs.remove(StoreKey.user.toString());
  }

  @override
  Future<void> saveOnboard(Onboard onboard) async {
    final prefs = await SharedPreferences.getInstance();
    _onboard = onboard;
    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.Android ||
        _platform == PlatformType.Linux) {
      const storage = FlutterSecureStorage();
      try {
        await storage.write(
            key: StoreKey.onboard.toString(), value: onboardToJson(onboard));
      } on Exception catch (e) {}
    } else {
      await prefs.setString(
          StoreKey.onboard.toString(), onboardToJson(onboard));
    }
  }

  @override
  Future<Onboard?> fetchOnboard() async {
    String? onboardValue;

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.Android ||
        _platform == PlatformType.Linux) {
      const storage = FlutterSecureStorage();
      onboardValue = await storage.read(key: StoreKey.onboard.toString());
    } else {
      final prefs = await SharedPreferences.getInstance();
      onboardValue = prefs.getString(StoreKey.onboard.toString());
    }
    try {
      if (onboardValue != null) {
        _onboard = onboardFromJson(onboardValue);
      }
    } on Exception catch (e) {
      return _onboard;
    }

    return _onboard;
  }
}
