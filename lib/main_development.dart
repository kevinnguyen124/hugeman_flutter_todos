import 'package:flutter/widgets.dart';
import 'package:todo_app/infrastructure/bootstrap.dart';
import 'package:todo_app/infrastructure/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies('dev');
  bootstrap();
}
