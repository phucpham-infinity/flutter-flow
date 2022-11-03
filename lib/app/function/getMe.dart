import 'package:flow_project/shared/http/api_provider.dart';
import 'package:flow_project/shared/http/api_response.dart';

Future<APIResponse> getMe(ApiProvider api) async {
  final user = await api.get('user');
  return user;
}
