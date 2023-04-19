part of 'todos_overview_bloc.dart';

@freezed
class TodosOverviewEvent with _$TodosOverviewEvent {
  const factory TodosOverviewEvent.todosOverviewSubscriptionRequested() =
      TodosOverviewSubscriptionRequested;
  const factory TodosOverviewEvent.todosOverviewTodoCompletionToggled(
      {required Todo todo,
      required bool isCompleted}) = TodosOverviewTodoCompletionToggled;
  const factory TodosOverviewEvent.todosOverviewTodoDeleted(Todo todo) =
      TodosOverviewTodoDeleted;
  const factory TodosOverviewEvent.todosOverviewUndoDeletionRequested() =
      TodosOverviewUndoDeletionRequested;
  const factory TodosOverviewEvent.todosOverviewFilterChanged(
      TodosViewFilter filter) = TodosOverviewFilterChanged;
  const factory TodosOverviewEvent.todosOverviewToggleAllRequested() =
      TodosOverviewToggleAllRequested;
  const factory TodosOverviewEvent.todosOverviewClearCompletedRequested() =
      TodosOverviewClearCompletedRequested;
}
