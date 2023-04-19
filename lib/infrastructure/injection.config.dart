// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../domain/todo_gateway.dart' as _i5;
import '../domain/usecase/clear_compeleted_todo_use_case%20copy.dart' as _i7;
import '../domain/usecase/complete_all_todos_use_case.dart' as _i8;
import '../domain/usecase/delete_todo_use_case.dart' as _i9;
import '../domain/usecase/get_todos_use_case.dart' as _i10;
import '../domain/usecase/save_todo_use_case.dart' as _i11;
import 'data/source/local_storage_todo_api.dart' as _i4;
import 'data/todo_gateway_impl.dart' as _i6;
import 'injection.dart' as _i12;

const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i4.LocalStorageTodosApi>(
        () => _i4.LocalStorageTodosApi(plugin: gh<_i3.SharedPreferences>()));
    gh.factory<_i5.TodoGateway>(
        () => _i6.TodoGatewayImpl(gh<_i4.LocalStorageTodosApi>()));
    gh.factory<_i7.ClearCompletedTodosUsecase>(
      () => _i7.ClearCompletedTodosUsecase(gh<_i5.TodoGateway>()),
      registerFor: {_dev},
    );
    gh.factory<_i8.CompleteAllTodosUsecase>(
      () => _i8.CompleteAllTodosUsecase(gh<_i5.TodoGateway>()),
      registerFor: {_dev},
    );
    gh.factory<_i9.DeleteTodoUsecase>(
      () => _i9.DeleteTodoUsecase(gh<_i5.TodoGateway>()),
      registerFor: {_dev},
    );
    gh.factory<_i10.GetTodosUsecase>(
      () => _i10.GetTodosUsecase(gh<_i5.TodoGateway>()),
      registerFor: {_dev},
    );
    gh.factory<_i11.SaveTodoUsecase>(
      () => _i11.SaveTodoUsecase(gh<_i5.TodoGateway>()),
      registerFor: {_dev},
    );
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
