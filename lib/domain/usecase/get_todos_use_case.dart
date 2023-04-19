import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/domain/todo_gateway.dart';
import 'package:todo_app/domain/usecase/base/stream/base_stream_use_case.dart';

part 'get_todos_use_case.freezed.dart';

@dev
@injectable
class GetTodosUsecase extends BaseStreamUseCase<GetTodosInput, List<Todo>> {
  TodoGateway todoGateway;

  GetTodosUsecase(TodoGateway this.todoGateway);
  @override
  Stream<List<Todo>> buildUseCase(GetTodosInput input) {
    var output = todoGateway.getTodos();
    return output;
  }
}

@freezed
class GetTodosInput with _$GetTodosInput {
  const factory GetTodosInput.all() = All;
  const factory GetTodosInput.completed() = Completed;
}
