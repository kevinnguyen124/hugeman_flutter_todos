// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/presentations/todos_overview/todos_overview.dart';

void main() {
  group('TodosOverviewEvent', () {
    final mockTodo = Todo(
      id: '1',
      title: 'title 1',
      description: 'description 1',
    );

    group('TodosOverviewSubscriptionRequested', () {
      test('supports value equality', () {
        expect(
          TodosOverviewSubscriptionRequested(),
          equals(TodosOverviewSubscriptionRequested()),
        );
      });
    });

    group('TodosOverviewTodoCompletionToggled', () {
      test('supports value equality', () {
        expect(
          TodosOverviewTodoCompletionToggled(
            todo: mockTodo,
            isCompleted: true,
          ),
          equals(
            TodosOverviewTodoCompletionToggled(
              todo: mockTodo,
              isCompleted: true,
            ),
          ),
        );
      });

      test('props are correct', () {
        expect(
          TodosOverviewTodoCompletionToggled(
            todo: mockTodo,
            isCompleted: true,
          ),
          equals(<Object?>[
            mockTodo, // `todo`
            true, // isCompleted
          ]),
        );
      });
    });

    group('TodosOverviewTodoDeleted', () {
      test('supports value equality', () {
        expect(
          TodosOverviewTodoDeleted(mockTodo),
          equals(TodosOverviewTodoDeleted(mockTodo)),
        );
      });

      test('props are correct', () {
        expect(
          TodosOverviewTodoDeleted(mockTodo),
          equals(<Object?>[
            mockTodo, // `todo`
          ]),
        );
      });
    });

    group('TodosOverviewUndoDeletionRequested', () {
      test('supports value equality', () {
        expect(
          TodosOverviewUndoDeletionRequested(),
          equals(TodosOverviewUndoDeletionRequested()),
        );
      });

      test('props are correct', () {
        expect(
          TodosOverviewUndoDeletionRequested(),
          equals(<Object?>[]),
        );
      });
    });

    group('TodosOverviewFilterChanged', () {
      test('supports value equality', () {
        expect(
          TodosOverviewFilterChanged(TodosViewFilter.all),
          equals(TodosOverviewFilterChanged(TodosViewFilter.all)),
        );
      });

      test('props are correct', () {
        expect(
          TodosOverviewFilterChanged(TodosViewFilter.all),
          equals(<Object?>[
            TodosViewFilter.all, // filter
          ]),
        );
      });
    });

    group('TodosOverviewToggleAllRequested', () {
      test('supports value equality', () {
        expect(
          TodosOverviewToggleAllRequested(),
          equals(TodosOverviewToggleAllRequested()),
        );
      });

      test('props are correct', () {
        expect(
          TodosOverviewToggleAllRequested(),
          equals(<Object?>[]),
        );
      });
    });

    group('TodosOverviewClearCompletedRequested', () {
      test('supports value equality', () {
        expect(
          TodosOverviewClearCompletedRequested(),
          equals(TodosOverviewClearCompletedRequested()),
        );
      });

      test('props are correct', () {
        expect(
          TodosOverviewClearCompletedRequested(),
          equals(<Object?>[]),
        );
      });
    });
  });
}
