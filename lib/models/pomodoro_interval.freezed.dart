// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pomodoro_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PomodoroInterval {
  String get id => throw _privateConstructorUsedError;
  DateTime get startAt => throw _privateConstructorUsedError;
  DateTime get endAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PomodoroIntervalCopyWith<PomodoroInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroIntervalCopyWith<$Res> {
  factory $PomodoroIntervalCopyWith(
          PomodoroInterval value, $Res Function(PomodoroInterval) then) =
      _$PomodoroIntervalCopyWithImpl<$Res, PomodoroInterval>;
  @useResult
  $Res call({String id, DateTime startAt, DateTime endAt});
}

/// @nodoc
class _$PomodoroIntervalCopyWithImpl<$Res, $Val extends PomodoroInterval>
    implements $PomodoroIntervalCopyWith<$Res> {
  _$PomodoroIntervalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = null,
    Object? endAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PomodoroIntervalCopyWith<$Res>
    implements $PomodoroIntervalCopyWith<$Res> {
  factory _$$_PomodoroIntervalCopyWith(
          _$_PomodoroInterval value, $Res Function(_$_PomodoroInterval) then) =
      __$$_PomodoroIntervalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime startAt, DateTime endAt});
}

/// @nodoc
class __$$_PomodoroIntervalCopyWithImpl<$Res>
    extends _$PomodoroIntervalCopyWithImpl<$Res, _$_PomodoroInterval>
    implements _$$_PomodoroIntervalCopyWith<$Res> {
  __$$_PomodoroIntervalCopyWithImpl(
      _$_PomodoroInterval _value, $Res Function(_$_PomodoroInterval) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = null,
    Object? endAt = null,
  }) {
    return _then(_$_PomodoroInterval(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_PomodoroInterval implements _PomodoroInterval {
  const _$_PomodoroInterval(
      {required this.id, required this.startAt, required this.endAt});

  @override
  final String id;
  @override
  final DateTime startAt;
  @override
  final DateTime endAt;

  @override
  String toString() {
    return 'PomodoroInterval(id: $id, startAt: $startAt, endAt: $endAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroInterval &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, startAt, endAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PomodoroIntervalCopyWith<_$_PomodoroInterval> get copyWith =>
      __$$_PomodoroIntervalCopyWithImpl<_$_PomodoroInterval>(this, _$identity);
}

abstract class _PomodoroInterval implements PomodoroInterval {
  const factory _PomodoroInterval(
      {required final String id,
      required final DateTime startAt,
      required final DateTime endAt}) = _$_PomodoroInterval;

  @override
  String get id;
  @override
  DateTime get startAt;
  @override
  DateTime get endAt;
  @override
  @JsonKey(ignore: true)
  _$$_PomodoroIntervalCopyWith<_$_PomodoroInterval> get copyWith =>
      throw _privateConstructorUsedError;
}
