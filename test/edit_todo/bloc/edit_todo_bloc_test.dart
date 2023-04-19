import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/domain/usecase/save_todo_use_case.dart';
import 'package:todo_app/presentations/edit_todo/edit_todo.dart';
import 'package:mocktail/mocktail.dart';

class FakeTodo extends Fake implements Todo {}

class MockSaveTodoUsecase extends Mock implements SaveTodoUsecase {}

void main() {
  group('EditTodoBloc', () {
    final _saveTodoUsecase = MockSaveTodoUsecase();
    setUpAll(() {
      registerFallbackValue(FakeTodo());
    });

    EditTodoBloc buildBloc() {
      return EditTodoBloc(
        saveTodoUsecase: _saveTodoUsecase,
        initialTodo: null,
      );
    }

    group('constructor', () {
      test('works properly', () {
        expect(buildBloc, returnsNormally);
      });

      test('has correct initial state', () {
        expect(
          buildBloc().state,
          equals(const EditTodoState()),
        );
      });
    });

    group('EditTodoTitleChanged', () {
      blocTest<EditTodoBloc, EditTodoState>(
        'emits new state with updated title',
        build: buildBloc,
        act: (bloc) => bloc.add(const EditTodoTitleChanged('newtitle')),
        expect: () => const [
          EditTodoState(title: 'newtitle'),
        ],
      );
    });

    group('EditTodoDescriptionChanged', () {
      blocTest<EditTodoBloc, EditTodoState>(
        'emits new state with updated description',
        build: buildBloc,
        act: (bloc) =>
            bloc.add(const EditTodoDescriptionChanged('newdescription')),
        expect: () => const [
          EditTodoState(description: 'newdescription'),
        ],
      );
    });

    group('EditTodoSubmitted', () {
      blocTest<EditTodoBloc, EditTodoState>(
        'attempts to save new todo to repository '
        'if no initial todo was provided',
        setUp: () {
          when(() => _saveTodoUsecase.execute(any())).thenAnswer((_) async {});
        },
        build: buildBloc,
        seed: () => const EditTodoState(
          title: 'title',
          description: 'description',
        ),
        act: (bloc) => bloc.add(const EditTodoSubmitted()),
        expect: () => const [
          EditTodoState(
            status: EditTodoStatus.loading,
            title: 'title',
            description: 'description',
          ),
          EditTodoState(
            status: EditTodoStatus.success,
            title: 'title',
            description: 'description',
          ),
        ],
        verify: (bloc) {
          verify(
            () => _saveTodoUsecase.execute(
              any(
                that: isA<SaveTodoInput>()
                    .having((t) => t.todo.title, 'title', equals('title'))
                    .having(
                      (t) => t.todo.description,
                      'description',
                      equals('description'),
                    ),
              ),
            ),
          ).called(1);
        },
      );

      blocTest<EditTodoBloc, EditTodoState>(
        'attempts to save updated todo to repository '
        'if an initial todo was provided',
        setUp: () {
          when(() => _saveTodoUsecase.execute(any())).thenAnswer((_) async {});
        },
        build: buildBloc,
        seed: () => EditTodoState(
          initialTodo: Todo(
            id: 'initial-id',
            title: 'initial-title',
          ),
          title: 'title',
          description: 'description',
        ),
        act: (bloc) => bloc.add(const EditTodoSubmitted()),
        expect: () => [
          EditTodoState(
            status: EditTodoStatus.loading,
            initialTodo: Todo(
              id: 'initial-id',
              title: 'initial-title',
            ),
            title: 'title',
            description: 'description',
          ),
          EditTodoState(
            status: EditTodoStatus.success,
            initialTodo: Todo(
              id: 'initial-id',
              title: 'initial-title',
            ),
            title: 'title',
            description: 'description',
          ),
        ],
        verify: (bloc) {
          verify(
            () => _saveTodoUsecase.execute(
              any(
                that: isA<SaveTodoInput>()
                    .having((t) => t.todo.id, 'id', equals('initial-id'))
                    .having((t) => t.todo.title, 'title', equals('title'))
                    .having(
                      (t) => t.todo.description,
                      'description',
                      equals('description'),
                    ),
              ),
            ),
          );
        },
      );

      blocTest<EditTodoBloc, EditTodoState>(
        'emits new state with error if save to repository fails',
        build: () {
          when(() => _saveTodoUsecase.execute(any()))
              .thenThrow(Exception('oops'));
          return buildBloc();
        },
        seed: () => const EditTodoState(
          title: 'title',
          description: 'description',
        ),
        act: (bloc) => bloc.add(const EditTodoSubmitted()),
        expect: () => const [
          EditTodoState(
            status: EditTodoStatus.loading,
            title: 'title',
            description: 'description',
          ),
          EditTodoState(
            status: EditTodoStatus.failure,
            title: 'title',
            description: 'description',
          ),
        ],
      );
    });
  });
}
