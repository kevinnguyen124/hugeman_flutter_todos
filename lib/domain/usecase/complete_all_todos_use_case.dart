import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/domain/todo_gateway.dart';
import 'package:todo_app/domain/usecase/base/future/base_future_use_case.dart';
import 'package:todo_app/domain/usecase/base/stream/base_stream_use_case.dart';

part 'complete_all_todos_use_case.freezed.dart';
@dev
@injectable
class CompleteAllTodosUsecase
    extends BaseFutureUseCase<CompleteAllTodosInput, void> {
  CompleteAllTodosUsecase(TodoGateway this.todoGateway);
  TodoGateway todoGateway;

  @override
  Future<void> buildUseCase(CompleteAllTodosInput input) async {
    await todoGateway.completeAll(isCompleted: input.isCompleted);
  }
}

@freezed
class CompleteAllTodosInput with _$CompleteAllTodosInput {
  const factory CompleteAllTodosInput(bool isCompleted) =
      _CompleteAllTodosInput;
}
