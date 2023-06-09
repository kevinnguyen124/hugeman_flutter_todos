// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/presentations/edit_todo/edit_todo.dart';

void main() {
  group('EditTodoEvent', () {
    group('EditTodoTitleChanged', () {
      test('supports value equality', () {
        expect(
          EditTodoTitleChanged('title'),
          equals(EditTodoTitleChanged('title')),
        );
      });

      test('props are correct', () {
        expect(
          EditTodoTitleChanged('title').title,
          equals(
            'title', // title
          ),
        );
      });
    });

    group('EditTodoDescriptionChanged', () {
      test('supports value equality', () {
        expect(
          EditTodoDescriptionChanged('description'),
          equals(EditTodoDescriptionChanged('description')),
        );
      });

      test('props are correct', () {
        expect(
          EditTodoDescriptionChanged('description').description,
          equals(
            'description', // description
          ),
        );
      });
    });

    group('EditTodoSubmitted', () {
      test('supports value equality', () {
        expect(
          EditTodoSubmitted(),
          equals(EditTodoSubmitted()),
        );
      });
    });
  });
}
