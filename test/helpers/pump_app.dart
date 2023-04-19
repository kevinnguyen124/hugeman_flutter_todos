import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/infrastructure/data/todo_gateway_impl.dart';
import 'package:todo_app/infrastructure/l10n/l10n.dart';
import 'package:mocktail/mocktail.dart';

class MockTodoGatewayImpl extends Mock implements TodoGatewayImpl {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    TodoGatewayImpl? todoGateway,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: todoGateway ?? MockTodoGatewayImpl(),
        child: MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(body: widget),
        ),
      ),
    );
  }

  Future<void> pumpRoute(
    Route<dynamic> route, {
    TodoGatewayImpl? todosGateway,
  }) {
    return pumpApp(
      Navigator(onGenerateRoute: (_) => route),
      todoGateway: todosGateway,
    );
  }
}
