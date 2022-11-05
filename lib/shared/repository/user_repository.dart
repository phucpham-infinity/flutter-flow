import 'package:flow_project/shared/constants/store_key.dart';
import 'package:flow_project/shared/model/user/user.dart';
import 'package:flow_project/shared/util/platform_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserRepositoryProtocol {
  Future<void> remove();
  Future<void> saveUser(User user);
  Future<User?> fetchUser();
}

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(ref);
});

class UserRepository implements UserRepositoryProtocol {
  UserRepository(this.ref);

  late final _platform = ref.read(platformTypeProvider);
  final Ref ref;
  User? _user;

  @override
  Future<void> remove() async {
    _user = null;
    final prefs = await SharedPreferences.getInstance();

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.Android ||
        _platform == PlatformType.Linux) {
      const storage = FlutterSecureStorage();
      try {
        await storage.delete(key: StoreKey.user.toString());
      } on Exception catch (e) {}
    } else {
      await prefs.remove(StoreKey.user.toString());
    }

    await prefs.remove(StoreKey.user.toString());
  }

  @override
  Future<void> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    _user = user;
    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.Android ||
        _platform == PlatformType.Linux) {
      const storage = FlutterSecureStorage();
      try {
        await storage.write(
            key: StoreKey.user.toString(), value: userToJson(user));
      } on Exception catch (e) {}
    } else {
      await prefs.setString(StoreKey.user.toString(), userToJson(user));
    }
  }

  @override
  Future<User?> fetchUser() async {
    String? userValue;

    if (_platform == PlatformType.iOS ||
        _platform == PlatformType.Android ||
        _platform == PlatformType.Linux) {
      const storage = FlutterSecureStorage();
      userValue = await storage.read(key: StoreKey.user.toString());
    } else {
      final prefs = await SharedPreferences.getInstance();
      userValue = prefs.getString(StoreKey.user.toString());
    }
    try {
      if (userValue != null) {
        _user = userFromJson(userValue);
      }
    } on Exception catch (e) {
      return _user;
    }

    return _user;
  }
}
