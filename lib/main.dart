import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'gen/assets.gen.dart';
import 'start.dart';

void main() async {
  print('RUN APP');
  await dotenv.load(fileName: Assets.env.envProduction);
  start();
}
