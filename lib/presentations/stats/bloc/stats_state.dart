part of 'stats_bloc.dart';

enum StatsStatus { initial, loading, success, failure }

@freezed
class StatsState with _$StatsState {
  const factory StatsState({
    @Default(StatsStatus.initial) StatsStatus status,
    @Default(0) int completedTodos,
    @Default(0) int activeTodos,
  }) = _StatsState;
}
