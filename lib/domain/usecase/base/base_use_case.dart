import 'package:meta/meta.dart';

abstract class BaseUseCase<Input, Output> {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}
