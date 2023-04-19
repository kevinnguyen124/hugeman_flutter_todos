import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/domain/usecase/clear_compeleted_todo_use_case%20copy.dart';
import 'package:todo_app/domain/usecase/complete_all_todos_use_case.dart';
import 'package:todo_app/domain/usecase/delete_todo_use_case.dart';
import 'package:todo_app/domain/usecase/get_todos_use_case.dart';
import 'package:todo_app/domain/usecase/save_todo_use_case.dart';
import 'package:todo_app/presentations/todos_overview/todos_overview.dart';
import 'package:mocktail/mocktail.dart';

class MockSaveTodoUsecase extends Mock implements SaveTodoUsecase {}

class MockGetTodosUsecase extends Mock implements GetTodosUsecase {}

class MockCompleteAllTodosUsecase extends Mock
    implements CompleteAllTodosUsecase {}

class MockClearCompletedTodosUsecase extends Mock
    implements ClearCompletedTodosUsecase {}

class MockDeleteTodoUsecase extends Mock implements DeleteTodoUsecase {}

class FakeTodo extends Fake implements Todo {}

void main() {
  final mockTodos = [
    Todo(
      id: '1',
      title: 'title 1',
      description: 'description 1',
    ),
    Todo(
      id: '2',
      title: 'title 2',
      description: 'description 2',
    ),
    Todo(
      id: '3',
      title: 'title 3',
      description: 'description 3',
      isCompleted: true,
    ),
  ];

  group('TodosOverviewBloc', () {
    late GetTodosUsecase getTodosUsecase;
    late SaveTodoUsecase saveTodoUsecase;
    late DeleteTodoUsecase deleteTodoUsecase;
    late CompleteAllTodosUsecase completeAllTodosUsecase;
    late ClearCompletedTodosUsecase clearCompletedTodosUsecase;

    setUpAll(() {
      registerFallbackValue(FakeTodo());
    });

    setUp(() {
      getTodosUsecase = MockGetTodosUsecase();
      saveTodoUsecase = MockSaveTodoUsecase();
      deleteTodoUsecase = MockDeleteTodoUsecase();
      completeAllTodosUsecase = MockCompleteAllTodosUsecase();
      clearCompletedTodosUsecase = MockClearCompletedTodosUsecase();
      when(
        () => getTodosUsecase.execute(any()),
      ).thenAnswer((_) => Stream.value(mockTodos));
      when(() => saveTodoUsecase.execute(any())).thenAnswer((_) async {});
    });

    TodosOverviewBloc buildBloc() {
      return TodosOverviewBloc(
          getTodosUsecase: getTodosUsecase,
          saveTodoUsecase: saveTodoUsecase,
          deleteTodoUsecase: deleteTodoUsecase,
          completeAllTodosUsecase: completeAllTodosUsecase,
          clearCompletedTodosUsecase: clearCompletedTodosUsecase);
    }

    group('constructor', () {
      test('works properly', () => expect(buildBloc, returnsNormally));

      test('has correct initial state', () {
        expect(
          buildBloc().state,
          equals(const TodosOverviewState()),
        );
      });
    });

    group('TodosOverviewSubscriptionRequested', () {
      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'starts listening to repository getTodos stream',
        build: buildBloc,
        act: (bloc) => bloc.add(const TodosOverviewSubscriptionRequested()),
        verify: (_) {
          verify(() => getTodosUsecase.execute(any())).called(1);
        },
      );

      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'emits state with updated status and todos '
        'when repository getTodos stream emits new todos',
        build: buildBloc,
        act: (bloc) => bloc.add(const TodosOverviewSubscriptionRequested()),
        expect: () => [
          const TodosOverviewState(
            status: TodosOverviewStatus.loading,
          ),
          TodosOverviewState(
            status: TodosOverviewStatus.success,
            todos: mockTodos,
          ),
        ],
      );

      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'emits state with failure status '
        'when repository getTodos stream emits error',
        setUp: () {
          when(
            () => getTodosUsecase.execute(any()),
          ).thenAnswer((_) => Stream.error(Exception('oops')));
        },
        build: buildBloc,
        act: (bloc) => bloc.add(const TodosOverviewSubscriptionRequested()),
        expect: () => [
          const TodosOverviewState(status: TodosOverviewStatus.loading),
          const TodosOverviewState(status: TodosOverviewStatus.failure),
        ],
      );
    });

    group('TodosOverviewTodoCompletionToggled', () {
      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'saves todo with isCompleted set to event isCompleted flag',
        build: buildBloc,
        seed: () => TodosOverviewState(todos: mockTodos),
        act: (bloc) => bloc.add(
          TodosOverviewTodoCompletionToggled(
            todo: mockTodos.first,
            isCompleted: true,
          ),
        ),
        verify: (_) {
          verify(
            () => saveTodoUsecase.execute(
              SaveTodoInput(mockTodos.first.copyWith(isCompleted: true)),
            ),
          ).called(1);
        },
      );
    });

    group('TodosOverviewTodoDeleted', () {
      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'deletes todo using repository',
        setUp: () {
          when(
            () => deleteTodoUsecase.execute(any()),
          ).thenAnswer((_) async {});
        },
        build: buildBloc,
        seed: () => TodosOverviewState(todos: mockTodos),
        act: (bloc) => bloc.add(TodosOverviewTodoDeleted(mockTodos.first)),
        verify: (_) {
          verify(
            () =>
                deleteTodoUsecase.execute(DeleteTodoInput(mockTodos.first.id)),
          ).called(1);
        },
      );
    });

    group('TodosOverviewUndoDeletionRequested', () {
      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'restores last deleted undo and clears lastDeletedUndo field',
        build: buildBloc,
        seed: () => TodosOverviewState(lastDeletedTodo: mockTodos.first),
        act: (bloc) => bloc.add(const TodosOverviewUndoDeletionRequested()),
        expect: () => const [TodosOverviewState()],
        verify: (_) {
          verify(() => saveTodoUsecase.execute(SaveTodoInput(mockTodos.first)))
              .called(1);
        },
      );
    });

    group('TodosOverviewFilterChanged', () {
      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'emits state with updated filter',
        build: buildBloc,
        act: (bloc) => bloc.add(
          const TodosOverviewFilterChanged(TodosViewFilter.completedOnly),
        ),
        expect: () => const [
          TodosOverviewState(filter: TodosViewFilter.completedOnly),
        ],
      );
    });

    group('TodosOverviewToggleAllRequested', () {
      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'toggles all todos to completed when some or none are uncompleted',
        setUp: () {
          when(
            () => completeAllTodosUsecase
                .execute(CompleteAllTodosInput(any(named: 'isCompleted'))),
          ).thenAnswer((_) async => 0);
        },
        build: buildBloc,
        seed: () => TodosOverviewState(todos: mockTodos),
        act: (bloc) => bloc.add(const TodosOverviewToggleAllRequested()),
        verify: (_) {
          verify(
            () => completeAllTodosUsecase
                .execute(const CompleteAllTodosInput(true)),
          ).called(1);
        },
      );

      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'toggles all todos to uncompleted when all are completed',
        setUp: () {
          when(
            () => completeAllTodosUsecase
                .execute(CompleteAllTodosInput(any(named: 'isCompleted'))),
          ).thenAnswer((_) async => 0);
        },
        build: buildBloc,
        seed: () => TodosOverviewState(
          todos: mockTodos
              .map((todo) => todo.copyWith(isCompleted: true))
              .toList(),
        ),
        act: (bloc) => bloc.add(const TodosOverviewToggleAllRequested()),
        verify: (_) {
          verify(
            () => completeAllTodosUsecase
                .execute(const CompleteAllTodosInput(false)),
          ).called(1);
        },
      );
    });

    group('TodosOverviewClearCompletedRequested', () {
      blocTest<TodosOverviewBloc, TodosOverviewState>(
        'clears completed todos using repository',
        setUp: () {
          when(
            () => clearCompletedTodosUsecase.execute(any()),
          ).thenAnswer((_) async => 0);
        },
        build: buildBloc,
        act: (bloc) => bloc.add(const TodosOverviewClearCompletedRequested()),
        verify: (_) {
          verify(() => clearCompletedTodosUsecase.execute(any())).called(1);
        },
      );
    });
  });
}
