import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/domain/todo_gateway.dart';
import 'package:todo_app/domain/usecase/base/future/base_future_use_case.dart';
import 'package:todo_app/domain/usecase/base/stream/base_stream_use_case.dart';

part 'delete_todo_use_case.freezed.dart';

@dev
@injectable
class DeleteTodoUsecase extends BaseFutureUseCase<DeleteTodoInput, void> {
  DeleteTodoUsecase(TodoGateway this.todoGateway);
  TodoGateway todoGateway;

  @override
  Future<void> buildUseCase(DeleteTodoInput input) async {
    await todoGateway.deleteTodo(input.id);
  }
}

@freezed
class DeleteTodoInput with _$DeleteTodoInput {
  const factory DeleteTodoInput(String id) = _DeleteTodoInput;
}
