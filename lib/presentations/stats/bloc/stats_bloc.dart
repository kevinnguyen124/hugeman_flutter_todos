import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/domain/entities/todo.dart';
import 'package:todo_app/domain/usecase/get_todos_use_case.dart';

part 'stats_bloc.freezed.dart';
part 'stats_event.dart';
part 'stats_state.dart';

class StatsBloc extends Bloc<StatsEvent, StatsState> {
  StatsBloc({
    required this.getTodosUsecase,
  }) : super(const StatsState()) {
    on<StatsSubscriptionRequested>(_onSubscriptionRequested);
  }
  final GetTodosUsecase getTodosUsecase;
  Future<void> _onSubscriptionRequested(
    StatsSubscriptionRequested event,
    Emitter<StatsState> emit,
  ) async {
    emit(state.copyWith(status: StatsStatus.loading));

    await emit.forEach<List<Todo>>(
      getTodosUsecase.execute(const GetTodosInput.all()),
      onData: (todos) => state.copyWith(
        status: StatsStatus.success,
        completedTodos: todos.where((todo) => todo.isCompleted).length,
        activeTodos: todos.where((todo) => !todo.isCompleted).length,
      ),
      onError: (_, __) => state.copyWith(status: StatsStatus.failure),
    );
  }
}
