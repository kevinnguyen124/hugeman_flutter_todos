
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/todo_gateway.dart';
import 'package:todo_app/domain/usecase/base/future/base_future_use_case.dart';
@dev
@injectable
class ClearCompletedTodosUsecase extends BaseFutureUseCase<void, void> {
  ClearCompletedTodosUsecase(TodoGateway this.todoGateway);
  TodoGateway todoGateway;

  @override
  Future<void> buildUseCase(void input) async {
    await todoGateway.clearCompleted();
  }
}
