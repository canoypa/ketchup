// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pomodoro_memo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PomodoroMemo {
  String get pomodoroId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PomodoroMemoCopyWith<PomodoroMemo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroMemoCopyWith<$Res> {
  factory $PomodoroMemoCopyWith(
          PomodoroMemo value, $Res Function(PomodoroMemo) then) =
      _$PomodoroMemoCopyWithImpl<$Res, PomodoroMemo>;
  @useResult
  $Res call({String pomodoroId, String id, String value, DateTime createdAt});
}

/// @nodoc
class _$PomodoroMemoCopyWithImpl<$Res, $Val extends PomodoroMemo>
    implements $PomodoroMemoCopyWith<$Res> {
  _$PomodoroMemoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pomodoroId = null,
    Object? id = null,
    Object? value = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      pomodoroId: null == pomodoroId
          ? _value.pomodoroId
          : pomodoroId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PomodoroMemoCopyWith<$Res>
    implements $PomodoroMemoCopyWith<$Res> {
  factory _$$_PomodoroMemoCopyWith(
          _$_PomodoroMemo value, $Res Function(_$_PomodoroMemo) then) =
      __$$_PomodoroMemoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pomodoroId, String id, String value, DateTime createdAt});
}

/// @nodoc
class __$$_PomodoroMemoCopyWithImpl<$Res>
    extends _$PomodoroMemoCopyWithImpl<$Res, _$_PomodoroMemo>
    implements _$$_PomodoroMemoCopyWith<$Res> {
  __$$_PomodoroMemoCopyWithImpl(
      _$_PomodoroMemo _value, $Res Function(_$_PomodoroMemo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pomodoroId = null,
    Object? id = null,
    Object? value = null,
    Object? createdAt = null,
  }) {
    return _then(_$_PomodoroMemo(
      pomodoroId: null == pomodoroId
          ? _value.pomodoroId
          : pomodoroId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PomodoroMemo implements _PomodoroMemo {
  const _$_PomodoroMemo(
      {required this.pomodoroId,
      required this.id,
      required this.value,
      required this.createdAt});

  @override
  final String pomodoroId;
  @override
  final String id;
  @override
  final String value;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PomodoroMemo(pomodoroId: $pomodoroId, id: $id, value: $value, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroMemo &&
            (identical(other.pomodoroId, pomodoroId) ||
                other.pomodoroId == pomodoroId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pomodoroId, id, value, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PomodoroMemoCopyWith<_$_PomodoroMemo> get copyWith =>
      __$$_PomodoroMemoCopyWithImpl<_$_PomodoroMemo>(this, _$identity);
}

abstract class _PomodoroMemo implements PomodoroMemo {
  const factory _PomodoroMemo(
      {required final String pomodoroId,
      required final String id,
      required final String value,
      required final DateTime createdAt}) = _$_PomodoroMemo;

  @override
  String get pomodoroId;
  @override
  String get id;
  @override
  String get value;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_PomodoroMemoCopyWith<_$_PomodoroMemo> get copyWith =>
      throw _privateConstructorUsedError;
}
