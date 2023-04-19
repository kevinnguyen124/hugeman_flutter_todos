import 'package:todo_app/domain/usecase/base/base_use_case.dart';

abstract class BaseFutureUseCase<Input, Output>
    extends BaseUseCase<Input, Future<Output>> {
  const BaseFutureUseCase();

  Future<Output> execute(Input input) async {
    try {
      final output = await buildUseCase(input);
      return output;
    } catch (e) {
      throw e;
    }
  }
}
