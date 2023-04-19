import 'package:todo_app/domain/usecase/base/base_use_case.dart';

abstract class BaseStreamUseCase<Input, Output>
    extends BaseUseCase<Input, Stream<Output>> {
  const BaseStreamUseCase();

  Stream<Output> execute(Input input) {
    return buildUseCase(input);
  }
}
