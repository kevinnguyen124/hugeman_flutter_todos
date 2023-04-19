// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_all_todos_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompleteAllTodosInput {
  bool get isCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteAllTodosInputCopyWith<CompleteAllTodosInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteAllTodosInputCopyWith<$Res> {
  factory $CompleteAllTodosInputCopyWith(CompleteAllTodosInput value,
          $Res Function(CompleteAllTodosInput) then) =
      _$CompleteAllTodosInputCopyWithImpl<$Res, CompleteAllTodosInput>;
  @useResult
  $Res call({bool isCompleted});
}

/// @nodoc
class _$CompleteAllTodosInputCopyWithImpl<$Res,
        $Val extends CompleteAllTodosInput>
    implements $CompleteAllTodosInputCopyWith<$Res> {
  _$CompleteAllTodosInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompleteAllTodosInputCopyWith<$Res>
    implements $CompleteAllTodosInputCopyWith<$Res> {
  factory _$$_CompleteAllTodosInputCopyWith(_$_CompleteAllTodosInput value,
          $Res Function(_$_CompleteAllTodosInput) then) =
      __$$_CompleteAllTodosInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCompleted});
}

/// @nodoc
class __$$_CompleteAllTodosInputCopyWithImpl<$Res>
    extends _$CompleteAllTodosInputCopyWithImpl<$Res, _$_CompleteAllTodosInput>
    implements _$$_CompleteAllTodosInputCopyWith<$Res> {
  __$$_CompleteAllTodosInputCopyWithImpl(_$_CompleteAllTodosInput _value,
      $Res Function(_$_CompleteAllTodosInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompleted = null,
  }) {
    return _then(_$_CompleteAllTodosInput(
      null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CompleteAllTodosInput implements _CompleteAllTodosInput {
  const _$_CompleteAllTodosInput(this.isCompleted);

  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'CompleteAllTodosInput(isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteAllTodosInput &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompleteAllTodosInputCopyWith<_$_CompleteAllTodosInput> get copyWith =>
      __$$_CompleteAllTodosInputCopyWithImpl<_$_CompleteAllTodosInput>(
          this, _$identity);
}

abstract class _CompleteAllTodosInput implements CompleteAllTodosInput {
  const factory _CompleteAllTodosInput(final bool isCompleted) =
      _$_CompleteAllTodosInput;

  @override
  bool get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_CompleteAllTodosInputCopyWith<_$_CompleteAllTodosInput> get copyWith =>
      throw _privateConstructorUsedError;
}
