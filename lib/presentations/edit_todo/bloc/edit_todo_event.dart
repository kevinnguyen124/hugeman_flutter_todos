part of 'edit_todo_bloc.dart';

@freezed
class EditTodoEvent with _$EditTodoEvent {
  const factory EditTodoEvent.editTodoTitleChanged(String title) =
      EditTodoTitleChanged;
  const factory EditTodoEvent.editTodoDescriptionChanged(String description) =
      EditTodoDescriptionChanged;
  const factory EditTodoEvent.editTodoSubmitted() = EditTodoSubmitted;
}
