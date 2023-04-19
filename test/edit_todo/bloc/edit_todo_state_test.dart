// ignore_for_file: prefer_const_constructors, avoid_redundant_argument_values

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/presentations/edit_todo/edit_todo.dart';

void main() {
  group('EditTodoState', () {
    final mockInitialTodo = Todo(
      id: '1',
      title: 'title 1',
      description: 'description 1',
    );

    EditTodoState createSubject({
      EditTodoStatus status = EditTodoStatus.initial,
      Todo? initialTodo,
      String title = '',
      String description = '',
    }) {
      return EditTodoState(
        status: status,
        initialTodo: initialTodo,
        title: title,
        description: description,
      );
    }

    test('supports value equality', () {
      expect(
        createSubject(),
        equals(createSubject()),
      );
    });

    test('isNewTodo returns true when a new todo is being created', () {
      expect(
        createSubject(
          initialTodo: null,
        ).isNewTodo,
        isTrue,
      );
    });

    group('copyWith', () {
      test('returns the same object if not arguments are provided', () {
        expect(
          createSubject().copyWith(),
          equals(createSubject()),
        );
      });

      test('replaces every non-null parameter', () {
        expect(
          createSubject().copyWith(
            status: EditTodoStatus.success,
            initialTodo: mockInitialTodo,
            title: 'title',
            description: 'description',
          ),
          equals(
            createSubject(
              status: EditTodoStatus.success,
              initialTodo: mockInitialTodo,
              title: 'title',
              description: 'description',
            ),
          ),
        );
      });
    });
  });
}
