part of 'edit_todo_bloc.dart';

enum EditTodoStatus { initial, loading, success, failure }

extension EditTodoStatusX on EditTodoStatus {
  bool get isLoadingOrSuccess => [
        EditTodoStatus.loading,
        EditTodoStatus.success,
      ].contains(this);
}

@freezed
class EditTodoState with _$EditTodoState {
  const EditTodoState._();
  const factory EditTodoState({
    @Default(EditTodoStatus.initial) EditTodoStatus status,
    Todo? initialTodo,
    @Default('') String title,
    @Default('') String description,
  }) = _EditTodoState;

  bool get isNewTodo => initialTodo == null;
}
