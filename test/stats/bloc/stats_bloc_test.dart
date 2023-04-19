import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/domain/todo_gateway.dart';
import 'package:todo_app/domain/usecase/get_todos_use_case.dart';
import 'package:todo_app/infrastructure/data/todo_gateway_impl.dart';
import 'package:todo_app/presentations/stats/stats.dart';
import 'package:mocktail/mocktail.dart';

class MockGetTodosUsecase extends Mock implements GetTodosUsecase {}

class FakeTodoGateway extends Fake implements TodoGateway {}

void main() {
  final todo = Todo(
    id: '1',
    title: 'title 1',
    description: 'description 1',
  );

  group('StatsBloc', () {
    late GetTodosUsecase getTodosUsecase;
    late TodoGateway todoGateway;
    setUp(() {
      todoGateway = FakeTodoGateway();
      getTodosUsecase = MockGetTodosUsecase();
      when(getTodosUsecase.execute(any()) as Function())
          .thenAnswer((_) => const Stream.empty());
    });

    StatsBloc buildBloc() => StatsBloc(getTodosUsecase: getTodosUsecase);

    group('constructor', () {
      test('works properly', () {
        expect(buildBloc, returnsNormally);
      });

      test('has correct initial state', () {
        expect(buildBloc().state, equals(const StatsState()));
      });
    });

    group('StatsSubscriptionRequested', () {
      blocTest<StatsBloc, StatsState>(
        'starts listening to repository getTodos stream',
        build: buildBloc,
        act: (bloc) => bloc.add(const StatsSubscriptionRequested()),
        verify: (bloc) {
          verify(() => getTodosUsecase.execute(any())).called(1);
        },
      );

      blocTest<StatsBloc, StatsState>(
        'emits state with updated status, completed todo and active todo count '
        'when repository getTodos stream emits new todos',
        setUp: () {
          when(
            getTodosUsecase.execute as Function(),
          ).thenAnswer((_) => Stream.value([todo]));
        },
        build: buildBloc,
        act: (bloc) => bloc.add(const StatsSubscriptionRequested()),
        expect: () => [
          const StatsState(status: StatsStatus.loading),
          const StatsState(
            status: StatsStatus.success,
            activeTodos: 1,
          ),
        ],
      );

      blocTest<StatsBloc, StatsState>(
        'emits state with failure status '
        'when repository getTodos stream emits error',
        setUp: () {
          when(
            () => getTodosUsecase.execute(any()),
          ).thenAnswer((_) => Stream.error(Exception('oops')));
        },
        build: buildBloc,
        act: (bloc) => bloc.add(const StatsSubscriptionRequested()),
        expect: () => [
          const StatsState(status: StatsStatus.loading),
          const StatsState(status: StatsStatus.failure),
        ],
      );
    });
  });
}
