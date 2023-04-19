// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_todos_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetTodosInput {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? all,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(All value) all,
    required TResult Function(Completed value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(All value)? all,
    TResult? Function(Completed value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(All value)? all,
    TResult Function(Completed value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTodosInputCopyWith<$Res> {
  factory $GetTodosInputCopyWith(
          GetTodosInput value, $Res Function(GetTodosInput) then) =
      _$GetTodosInputCopyWithImpl<$Res, GetTodosInput>;
}

/// @nodoc
class _$GetTodosInputCopyWithImpl<$Res, $Val extends GetTodosInput>
    implements $GetTodosInputCopyWith<$Res> {
  _$GetTodosInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AllCopyWith<$Res> {
  factory _$$AllCopyWith(_$All value, $Res Function(_$All) then) =
      __$$AllCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllCopyWithImpl<$Res> extends _$GetTodosInputCopyWithImpl<$Res, _$All>
    implements _$$AllCopyWith<$Res> {
  __$$AllCopyWithImpl(_$All _value, $Res Function(_$All) _then)
      : super(_value, _then);
}

/// @nodoc

class _$All implements All {
  const _$All();

  @override
  String toString() {
    return 'GetTodosInput.all()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$All);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function() completed,
  }) {
    return all();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? all,
    TResult? Function()? completed,
  }) {
    return all?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(All value) all,
    required TResult Function(Completed value) completed,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(All value)? all,
    TResult? Function(Completed value)? completed,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(All value)? all,
    TResult Function(Completed value)? completed,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class All implements GetTodosInput {
  const factory All() = _$All;
}

/// @nodoc
abstract class _$$CompletedCopyWith<$Res> {
  factory _$$CompletedCopyWith(
          _$Completed value, $Res Function(_$Completed) then) =
      __$$CompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedCopyWithImpl<$Res>
    extends _$GetTodosInputCopyWithImpl<$Res, _$Completed>
    implements _$$CompletedCopyWith<$Res> {
  __$$CompletedCopyWithImpl(
      _$Completed _value, $Res Function(_$Completed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Completed implements Completed {
  const _$Completed();

  @override
  String toString() {
    return 'GetTodosInput.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() all,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? all,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? all,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(All value) all,
    required TResult Function(Completed value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(All value)? all,
    TResult? Function(Completed value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(All value)? all,
    TResult Function(Completed value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class Completed implements GetTodosInput {
  const factory Completed() = _$Completed;
}
