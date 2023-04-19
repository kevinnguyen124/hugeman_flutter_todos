// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_todo_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveTodoInput {
  Todo get todo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveTodoInputCopyWith<SaveTodoInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveTodoInputCopyWith<$Res> {
  factory $SaveTodoInputCopyWith(
          SaveTodoInput value, $Res Function(SaveTodoInput) then) =
      _$SaveTodoInputCopyWithImpl<$Res, SaveTodoInput>;
  @useResult
  $Res call({Todo todo});
}

/// @nodoc
class _$SaveTodoInputCopyWithImpl<$Res, $Val extends SaveTodoInput>
    implements $SaveTodoInputCopyWith<$Res> {
  _$SaveTodoInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_value.copyWith(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaveTodoInputCopyWith<$Res>
    implements $SaveTodoInputCopyWith<$Res> {
  factory _$$_SaveTodoInputCopyWith(
          _$_SaveTodoInput value, $Res Function(_$_SaveTodoInput) then) =
      __$$_SaveTodoInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Todo todo});
}

/// @nodoc
class __$$_SaveTodoInputCopyWithImpl<$Res>
    extends _$SaveTodoInputCopyWithImpl<$Res, _$_SaveTodoInput>
    implements _$$_SaveTodoInputCopyWith<$Res> {
  __$$_SaveTodoInputCopyWithImpl(
      _$_SaveTodoInput _value, $Res Function(_$_SaveTodoInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$_SaveTodoInput(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$_SaveTodoInput implements _SaveTodoInput {
  const _$_SaveTodoInput(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'SaveTodoInput(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveTodoInput &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveTodoInputCopyWith<_$_SaveTodoInput> get copyWith =>
      __$$_SaveTodoInputCopyWithImpl<_$_SaveTodoInput>(this, _$identity);
}

abstract class _SaveTodoInput implements SaveTodoInput {
  const factory _SaveTodoInput(final Todo todo) = _$_SaveTodoInput;

  @override
  Todo get todo;
  @override
  @JsonKey(ignore: true)
  _$$_SaveTodoInputCopyWith<_$_SaveTodoInput> get copyWith =>
      throw _privateConstructorUsedError;
}
