import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/domain/todo_gateway.dart';
import 'package:todo_app/domain/usecase/base/future/base_future_use_case.dart';

part 'save_todo_use_case.freezed.dart';

@dev
@injectable
class SaveTodoUsecase extends BaseFutureUseCase<SaveTodoInput, void> {
  SaveTodoUsecase(this.todoGateway);
  TodoGateway todoGateway;

  @override
  Future<void> buildUseCase(SaveTodoInput input) async {
    await todoGateway.saveTodo(input.todo);
  }
}

@freezed
class SaveTodoInput with _$SaveTodoInput {
  const factory SaveTodoInput(Todo todo) = _SaveTodoInput;
}
