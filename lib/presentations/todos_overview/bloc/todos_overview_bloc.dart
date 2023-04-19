import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/domain/todo_gateway.dart';
import 'package:todo_app/domain/usecase/clear_compeleted_todo_use_case%20copy.dart';
import 'package:todo_app/domain/usecase/complete_all_todos_use_case.dart';
import 'package:todo_app/domain/usecase/delete_todo_use_case.dart';
import 'package:todo_app/domain/usecase/get_todos_use_case.dart';
import 'package:todo_app/domain/usecase/save_todo_use_case.dart';
import 'package:todo_app/infrastructure/injection.dart';
import 'package:todo_app/presentations/todos_overview/todos_overview.dart';

part 'todos_overview_bloc.freezed.dart';
part 'todos_overview_event.dart';
part 'todos_overview_state.dart';

class TodosOverviewBloc extends Bloc<TodosOverviewEvent, TodosOverviewState> {
  TodosOverviewBloc({
    required this.getTodosUsecase,
    required this.saveTodoUsecase,
    required this.deleteTodoUsecase,
    required this.completeAllTodosUsecase,
    required this.clearCompletedTodosUsecase,
  }) : super(TodosOverviewState()) {
    on<TodosOverviewSubscriptionRequested>(_onSubscriptionRequested);
    on<TodosOverviewTodoCompletionToggled>(_onTodoCompletionToggled);
    on<TodosOverviewTodoDeleted>(_onTodoDeleted);
    on<TodosOverviewUndoDeletionRequested>(_onUndoDeletionRequested);
    on<TodosOverviewFilterChanged>(_onFilterChanged);
    on<TodosOverviewToggleAllRequested>(_onToggleAllRequested);
    on<TodosOverviewClearCompletedRequested>(_onClearCompletedRequested);
  }

  final GetTodosUsecase getTodosUsecase;
  final SaveTodoUsecase saveTodoUsecase;
  final DeleteTodoUsecase deleteTodoUsecase;
  final CompleteAllTodosUsecase completeAllTodosUsecase;
  final ClearCompletedTodosUsecase clearCompletedTodosUsecase;

  Future<void> _onSubscriptionRequested(
    TodosOverviewSubscriptionRequested event,
    Emitter<TodosOverviewState> emit,
  ) async {
    emit(state.copyWith(status: TodosOverviewStatus.loading));

    await emit.forEach<List<Todo>>(
      getTodosUsecase.execute(const GetTodosInput.all()),
      onData: (todos) => state.copyWith(
        status: TodosOverviewStatus.success,
        todos: todos,
      ),
      onError: (_, __) => state.copyWith(
        status: TodosOverviewStatus.failure,
      ),
    );
  }

  Future<void> _onTodoCompletionToggled(
    TodosOverviewTodoCompletionToggled event,
    Emitter<TodosOverviewState> emit,
  ) async {
    final newTodo = event.todo.copyWith(isCompleted: event.isCompleted);
    await saveTodoUsecase.execute(SaveTodoInput(newTodo));
  }

  Future<void> _onTodoDeleted(
    TodosOverviewTodoDeleted event,
    Emitter<TodosOverviewState> emit,
  ) async {
    emit(state.copyWith(lastDeletedTodo: event.todo));
    await deleteTodoUsecase.execute(DeleteTodoInput(event.todo.id));
  }

  Future<void> _onUndoDeletionRequested(
    TodosOverviewUndoDeletionRequested event,
    Emitter<TodosOverviewState> emit,
  ) async {
    assert(
      state.lastDeletedTodo != null,
      'Last deleted todo can not be null.',
    );

    final todo = state.lastDeletedTodo!;
    emit(state.copyWith(lastDeletedTodo: null));
    await saveTodoUsecase.execute(SaveTodoInput(todo));
  }

  void _onFilterChanged(
    TodosOverviewFilterChanged event,
    Emitter<TodosOverviewState> emit,
  ) {
    emit(state.copyWith(filter: event.filter));
  }

  Future<void> _onToggleAllRequested(
    TodosOverviewToggleAllRequested event,
    Emitter<TodosOverviewState> emit,
  ) async {
    final areAllCompleted = state.todos.every((todo) => todo.isCompleted);
    await completeAllTodosUsecase
        .execute(CompleteAllTodosInput(!areAllCompleted));
  }

  Future<void> _onClearCompletedRequested(
    TodosOverviewClearCompletedRequested event,
    Emitter<TodosOverviewState> emit,
  ) async {
    await clearCompletedTodosUsecase.execute(null);
  }
}
