// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditTodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) editTodoTitleChanged,
    required TResult Function(String description) editTodoDescriptionChanged,
    required TResult Function() editTodoSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? editTodoTitleChanged,
    TResult? Function(String description)? editTodoDescriptionChanged,
    TResult? Function()? editTodoSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? editTodoTitleChanged,
    TResult Function(String description)? editTodoDescriptionChanged,
    TResult Function()? editTodoSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTodoTitleChanged value) editTodoTitleChanged,
    required TResult Function(EditTodoDescriptionChanged value)
        editTodoDescriptionChanged,
    required TResult Function(EditTodoSubmitted value) editTodoSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTodoTitleChanged value)? editTodoTitleChanged,
    TResult? Function(EditTodoDescriptionChanged value)?
        editTodoDescriptionChanged,
    TResult? Function(EditTodoSubmitted value)? editTodoSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTodoTitleChanged value)? editTodoTitleChanged,
    TResult Function(EditTodoDescriptionChanged value)?
        editTodoDescriptionChanged,
    TResult Function(EditTodoSubmitted value)? editTodoSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTodoEventCopyWith<$Res> {
  factory $EditTodoEventCopyWith(
          EditTodoEvent value, $Res Function(EditTodoEvent) then) =
      _$EditTodoEventCopyWithImpl<$Res, EditTodoEvent>;
}

/// @nodoc
class _$EditTodoEventCopyWithImpl<$Res, $Val extends EditTodoEvent>
    implements $EditTodoEventCopyWith<$Res> {
  _$EditTodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditTodoTitleChangedCopyWith<$Res> {
  factory _$$EditTodoTitleChangedCopyWith(_$EditTodoTitleChanged value,
          $Res Function(_$EditTodoTitleChanged) then) =
      __$$EditTodoTitleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$EditTodoTitleChangedCopyWithImpl<$Res>
    extends _$EditTodoEventCopyWithImpl<$Res, _$EditTodoTitleChanged>
    implements _$$EditTodoTitleChangedCopyWith<$Res> {
  __$$EditTodoTitleChangedCopyWithImpl(_$EditTodoTitleChanged _value,
      $Res Function(_$EditTodoTitleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$EditTodoTitleChanged(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTodoTitleChanged implements EditTodoTitleChanged {
  const _$EditTodoTitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'EditTodoEvent.editTodoTitleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTodoTitleChanged &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTodoTitleChangedCopyWith<_$EditTodoTitleChanged> get copyWith =>
      __$$EditTodoTitleChangedCopyWithImpl<_$EditTodoTitleChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) editTodoTitleChanged,
    required TResult Function(String description) editTodoDescriptionChanged,
    required TResult Function() editTodoSubmitted,
  }) {
    return editTodoTitleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? editTodoTitleChanged,
    TResult? Function(String description)? editTodoDescriptionChanged,
    TResult? Function()? editTodoSubmitted,
  }) {
    return editTodoTitleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? editTodoTitleChanged,
    TResult Function(String description)? editTodoDescriptionChanged,
    TResult Function()? editTodoSubmitted,
    required TResult orElse(),
  }) {
    if (editTodoTitleChanged != null) {
      return editTodoTitleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTodoTitleChanged value) editTodoTitleChanged,
    required TResult Function(EditTodoDescriptionChanged value)
        editTodoDescriptionChanged,
    required TResult Function(EditTodoSubmitted value) editTodoSubmitted,
  }) {
    return editTodoTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTodoTitleChanged value)? editTodoTitleChanged,
    TResult? Function(EditTodoDescriptionChanged value)?
        editTodoDescriptionChanged,
    TResult? Function(EditTodoSubmitted value)? editTodoSubmitted,
  }) {
    return editTodoTitleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTodoTitleChanged value)? editTodoTitleChanged,
    TResult Function(EditTodoDescriptionChanged value)?
        editTodoDescriptionChanged,
    TResult Function(EditTodoSubmitted value)? editTodoSubmitted,
    required TResult orElse(),
  }) {
    if (editTodoTitleChanged != null) {
      return editTodoTitleChanged(this);
    }
    return orElse();
  }
}

abstract class EditTodoTitleChanged implements EditTodoEvent {
  const factory EditTodoTitleChanged(final String title) =
      _$EditTodoTitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$EditTodoTitleChangedCopyWith<_$EditTodoTitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTodoDescriptionChangedCopyWith<$Res> {
  factory _$$EditTodoDescriptionChangedCopyWith(
          _$EditTodoDescriptionChanged value,
          $Res Function(_$EditTodoDescriptionChanged) then) =
      __$$EditTodoDescriptionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$EditTodoDescriptionChangedCopyWithImpl<$Res>
    extends _$EditTodoEventCopyWithImpl<$Res, _$EditTodoDescriptionChanged>
    implements _$$EditTodoDescriptionChangedCopyWith<$Res> {
  __$$EditTodoDescriptionChangedCopyWithImpl(
      _$EditTodoDescriptionChanged _value,
      $Res Function(_$EditTodoDescriptionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$EditTodoDescriptionChanged(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTodoDescriptionChanged implements EditTodoDescriptionChanged {
  const _$EditTodoDescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'EditTodoEvent.editTodoDescriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTodoDescriptionChanged &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTodoDescriptionChangedCopyWith<_$EditTodoDescriptionChanged>
      get copyWith => __$$EditTodoDescriptionChangedCopyWithImpl<
          _$EditTodoDescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) editTodoTitleChanged,
    required TResult Function(String description) editTodoDescriptionChanged,
    required TResult Function() editTodoSubmitted,
  }) {
    return editTodoDescriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? editTodoTitleChanged,
    TResult? Function(String description)? editTodoDescriptionChanged,
    TResult? Function()? editTodoSubmitted,
  }) {
    return editTodoDescriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? editTodoTitleChanged,
    TResult Function(String description)? editTodoDescriptionChanged,
    TResult Function()? editTodoSubmitted,
    required TResult orElse(),
  }) {
    if (editTodoDescriptionChanged != null) {
      return editTodoDescriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTodoTitleChanged value) editTodoTitleChanged,
    required TResult Function(EditTodoDescriptionChanged value)
        editTodoDescriptionChanged,
    required TResult Function(EditTodoSubmitted value) editTodoSubmitted,
  }) {
    return editTodoDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTodoTitleChanged value)? editTodoTitleChanged,
    TResult? Function(EditTodoDescriptionChanged value)?
        editTodoDescriptionChanged,
    TResult? Function(EditTodoSubmitted value)? editTodoSubmitted,
  }) {
    return editTodoDescriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTodoTitleChanged value)? editTodoTitleChanged,
    TResult Function(EditTodoDescriptionChanged value)?
        editTodoDescriptionChanged,
    TResult Function(EditTodoSubmitted value)? editTodoSubmitted,
    required TResult orElse(),
  }) {
    if (editTodoDescriptionChanged != null) {
      return editTodoDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class EditTodoDescriptionChanged implements EditTodoEvent {
  const factory EditTodoDescriptionChanged(final String description) =
      _$EditTodoDescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$$EditTodoDescriptionChangedCopyWith<_$EditTodoDescriptionChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTodoSubmittedCopyWith<$Res> {
  factory _$$EditTodoSubmittedCopyWith(
          _$EditTodoSubmitted value, $Res Function(_$EditTodoSubmitted) then) =
      __$$EditTodoSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTodoSubmittedCopyWithImpl<$Res>
    extends _$EditTodoEventCopyWithImpl<$Res, _$EditTodoSubmitted>
    implements _$$EditTodoSubmittedCopyWith<$Res> {
  __$$EditTodoSubmittedCopyWithImpl(
      _$EditTodoSubmitted _value, $Res Function(_$EditTodoSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditTodoSubmitted implements EditTodoSubmitted {
  const _$EditTodoSubmitted();

  @override
  String toString() {
    return 'EditTodoEvent.editTodoSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditTodoSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) editTodoTitleChanged,
    required TResult Function(String description) editTodoDescriptionChanged,
    required TResult Function() editTodoSubmitted,
  }) {
    return editTodoSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? editTodoTitleChanged,
    TResult? Function(String description)? editTodoDescriptionChanged,
    TResult? Function()? editTodoSubmitted,
  }) {
    return editTodoSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? editTodoTitleChanged,
    TResult Function(String description)? editTodoDescriptionChanged,
    TResult Function()? editTodoSubmitted,
    required TResult orElse(),
  }) {
    if (editTodoSubmitted != null) {
      return editTodoSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTodoTitleChanged value) editTodoTitleChanged,
    required TResult Function(EditTodoDescriptionChanged value)
        editTodoDescriptionChanged,
    required TResult Function(EditTodoSubmitted value) editTodoSubmitted,
  }) {
    return editTodoSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTodoTitleChanged value)? editTodoTitleChanged,
    TResult? Function(EditTodoDescriptionChanged value)?
        editTodoDescriptionChanged,
    TResult? Function(EditTodoSubmitted value)? editTodoSubmitted,
  }) {
    return editTodoSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTodoTitleChanged value)? editTodoTitleChanged,
    TResult Function(EditTodoDescriptionChanged value)?
        editTodoDescriptionChanged,
    TResult Function(EditTodoSubmitted value)? editTodoSubmitted,
    required TResult orElse(),
  }) {
    if (editTodoSubmitted != null) {
      return editTodoSubmitted(this);
    }
    return orElse();
  }
}

abstract class EditTodoSubmitted implements EditTodoEvent {
  const factory EditTodoSubmitted() = _$EditTodoSubmitted;
}

/// @nodoc
mixin _$EditTodoState {
  EditTodoStatus get status => throw _privateConstructorUsedError;
  Todo? get initialTodo => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTodoStateCopyWith<EditTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTodoStateCopyWith<$Res> {
  factory $EditTodoStateCopyWith(
          EditTodoState value, $Res Function(EditTodoState) then) =
      _$EditTodoStateCopyWithImpl<$Res, EditTodoState>;
  @useResult
  $Res call(
      {EditTodoStatus status,
      Todo? initialTodo,
      String title,
      String description});
}

/// @nodoc
class _$EditTodoStateCopyWithImpl<$Res, $Val extends EditTodoState>
    implements $EditTodoStateCopyWith<$Res> {
  _$EditTodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? initialTodo = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditTodoStatus,
      initialTodo: freezed == initialTodo
          ? _value.initialTodo
          : initialTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditTodoStateCopyWith<$Res>
    implements $EditTodoStateCopyWith<$Res> {
  factory _$$_EditTodoStateCopyWith(
          _$_EditTodoState value, $Res Function(_$_EditTodoState) then) =
      __$$_EditTodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EditTodoStatus status,
      Todo? initialTodo,
      String title,
      String description});
}

/// @nodoc
class __$$_EditTodoStateCopyWithImpl<$Res>
    extends _$EditTodoStateCopyWithImpl<$Res, _$_EditTodoState>
    implements _$$_EditTodoStateCopyWith<$Res> {
  __$$_EditTodoStateCopyWithImpl(
      _$_EditTodoState _value, $Res Function(_$_EditTodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? initialTodo = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_EditTodoState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditTodoStatus,
      initialTodo: freezed == initialTodo
          ? _value.initialTodo
          : initialTodo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditTodoState extends _EditTodoState {
  const _$_EditTodoState(
      {this.status = EditTodoStatus.initial,
      this.initialTodo,
      this.title = '',
      this.description = ''})
      : super._();

  @override
  @JsonKey()
  final EditTodoStatus status;
  @override
  final Todo? initialTodo;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'EditTodoState(status: $status, initialTodo: $initialTodo, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditTodoState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.initialTodo, initialTodo) ||
                other.initialTodo == initialTodo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, initialTodo, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditTodoStateCopyWith<_$_EditTodoState> get copyWith =>
      __$$_EditTodoStateCopyWithImpl<_$_EditTodoState>(this, _$identity);
}

abstract class _EditTodoState extends EditTodoState {
  const factory _EditTodoState(
      {final EditTodoStatus status,
      final Todo? initialTodo,
      final String title,
      final String description}) = _$_EditTodoState;
  const _EditTodoState._() : super._();

  @override
  EditTodoStatus get status;
  @override
  Todo? get initialTodo;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_EditTodoStateCopyWith<_$_EditTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
