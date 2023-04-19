part of 'todos_overview_bloc.dart';

enum TodosOverviewStatus { initial, loading, success, failure }

@freezed
class TodosOverviewState with _$TodosOverviewState {
  const TodosOverviewState._();
  const factory TodosOverviewState({
    @Default(TodosOverviewStatus.initial) TodosOverviewStatus status,
    @Default(const []) List<Todo> todos,
    @Default(TodosViewFilter.all) TodosViewFilter filter,
    Todo? lastDeletedTodo,
  }) = _TodosOverviewState;
  Iterable get filteredTodos => filter.applyAll(todos);
}
