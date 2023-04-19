// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_todo_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteTodoInput {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteTodoInputCopyWith<DeleteTodoInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTodoInputCopyWith<$Res> {
  factory $DeleteTodoInputCopyWith(
          DeleteTodoInput value, $Res Function(DeleteTodoInput) then) =
      _$DeleteTodoInputCopyWithImpl<$Res, DeleteTodoInput>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DeleteTodoInputCopyWithImpl<$Res, $Val extends DeleteTodoInput>
    implements $DeleteTodoInputCopyWith<$Res> {
  _$DeleteTodoInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteTodoInputCopyWith<$Res>
    implements $DeleteTodoInputCopyWith<$Res> {
  factory _$$_DeleteTodoInputCopyWith(
          _$_DeleteTodoInput value, $Res Function(_$_DeleteTodoInput) then) =
      __$$_DeleteTodoInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeleteTodoInputCopyWithImpl<$Res>
    extends _$DeleteTodoInputCopyWithImpl<$Res, _$_DeleteTodoInput>
    implements _$$_DeleteTodoInputCopyWith<$Res> {
  __$$_DeleteTodoInputCopyWithImpl(
      _$_DeleteTodoInput _value, $Res Function(_$_DeleteTodoInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteTodoInput(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteTodoInput implements _DeleteTodoInput {
  const _$_DeleteTodoInput(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DeleteTodoInput(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTodoInput &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTodoInputCopyWith<_$_DeleteTodoInput> get copyWith =>
      __$$_DeleteTodoInputCopyWithImpl<_$_DeleteTodoInput>(this, _$identity);
}

abstract class _DeleteTodoInput implements DeleteTodoInput {
  const factory _DeleteTodoInput(final String id) = _$_DeleteTodoInput;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteTodoInputCopyWith<_$_DeleteTodoInput> get copyWith =>
      throw _privateConstructorUsedError;
}
