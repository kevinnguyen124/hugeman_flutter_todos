import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'todo.g.dart';

typedef JsonMap = Map<String, dynamic>;

/// {@template todo_item}
/// A single `todo` item.
///
/// Contains a [title], [description] and [id], in addition to a [isCompleted]
/// flag.
///
/// If an [id] is provided, it cannot be empty. If no [id] is provided, one
/// will be generated.
///
/// [Todo]s are immutable and can be copied using [copyWith], in addition to
/// being serialized and deserialized using [toJson] and [fromJson]
/// respectively.
/// {@endtemplate}
@immutable
@JsonSerializable()
class Todo extends Equatable {
  /// {@macro todo_item}
  Todo({
    String? id,
    required this.title,
    this.description = '',
    this.isCompleted = false,
  })  : assert(
          id == null || id.isNotEmpty,
          'id can not be null and should be empty',
        ),
        id = id ?? const Uuid().v4();

  /// The unique identifier of the `todo`.
  ///
  /// Cannot be empty.
  final String id;

  /// The title of the `todo`.
  ///
  /// Note that the title may be empty.
  final String title;

  /// The description of the `todo`.
  ///
  /// Defaults to an empty string.
  final String description;

  /// Whether the `todo` is completed.
  ///
  /// Defaults to `false`.
  final bool isCompleted;

  /// Returns a copy of this `todo` with the given values updated.
  ///
  /// {@macro todo_item}
  Todo copyWith({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  /// Deserializes the given [JsonMap] into a [Todo].
  static Todo fromJson(JsonMap json) => _$TodoFromJson(json);

  /// Converts this [Todo] into a [JsonMap].
  JsonMap toJson() => _$TodoToJson(this);

  @override
  List<Object> get props => [id, title, description, isCompleted];
  static bool isValidPassword(String password) {
    return password.isNotEmpty;
  }

  /// Check if a string is empty phone number.
  /// Return true if it is not empty.
  static bool isEmptyPhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return false;
    }

    return true;
  }

  /// Check if a string is valid phone number.
  /// Return true if it is valid.
  static bool isValidPhoneNumber(String phoneNumber) {
    if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,11}$)').hasMatch(phoneNumber.trim())) {
      return false;
    }

    return true;
  }

  /// Check if a string is empty email.
  /// Return true if it is valid.
  static bool isEmptyEmail(String email) {
    if (email.isEmpty) {
      return false;
    }

    return true;
  }

  /// Check if a string is a valid email.
  /// Return true if it is valid.
  static bool isValidEmail(String email) {
    if (!RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
        .hasMatch(email.trim())) {
      return false;
    }

    return true;
  }

  /// Check if a string is empty date time.
  /// Return true if it is valid.
  static bool isEmptyDateTime(String dateTime) {
    if (dateTime.isEmpty) {
      return false;
    }

    return true;
  }

  /// Check if a string is a valid date time.
  /// Return true if it is valid.
  static bool isValidDateTime(String dateTime) {
    if (!RegExp(
      r'^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$',
    ).hasMatch(dateTime)) {
      return false;
    }

    return true;
  }

  /// Check if a string is alphanumeric.
  /// Return true if it is valid.
  static bool isAlphanumeric(String text) {
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(text.trim())) {
      return false;
    }

    return true;
  }

  /// Check if string is link
  /// Return true if it is valid
  static bool isLink(String text) {
    return Uri.parse(text).isAbsolute;
  }
}
