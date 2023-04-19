import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/domain/usecase/get_todos_use_case.dart';
import 'package:todo_app/infrastructure/l10n/l10n.dart';
import 'package:todo_app/presentations/stats/stats.dart';
import 'package:todo_app/infrastructure/injection.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StatsBloc(
        getTodosUsecase: getIt.get<GetTodosUsecase>(),
      )..add(const StatsSubscriptionRequested()),
      child: const StatsView(),
    );
  }
}

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.watch<StatsBloc>().state;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.statsAppBarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            key: const Key('statsView_completedTodos_listTile'),
            leading: const Icon(Icons.check_rounded),
            title: Text(l10n.statsCompletedTodoCountLabel),
            trailing: Text(
              '${state.completedTodos}',
              style: textTheme.headlineSmall,
            ),
          ),
          ListTile(
            key: const Key('statsView_activeTodos_listTile'),
            leading: const Icon(Icons.radio_button_unchecked_rounded),
            title: Text(l10n.statsActiveTodoCountLabel),
            trailing: Text(
              '${state.activeTodos}',
              style: textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}
