// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PomodoroMeasure {
  PomodoroStatus get status => throw _privateConstructorUsedError;
  PomodoroInfo get info => throw _privateConstructorUsedError;
  PomodoroInterval? get interval => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;
  Timer? get timer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PomodoroMeasureCopyWith<PomodoroMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroMeasureCopyWith<$Res> {
  factory $PomodoroMeasureCopyWith(
          PomodoroMeasure value, $Res Function(PomodoroMeasure) then) =
      _$PomodoroMeasureCopyWithImpl<$Res, PomodoroMeasure>;
  @useResult
  $Res call(
      {PomodoroStatus status,
      PomodoroInfo info,
      PomodoroInterval? interval,
      int? time,
      Timer? timer});

  $PomodoroInfoCopyWith<$Res> get info;
  $PomodoroIntervalCopyWith<$Res>? get interval;
}

/// @nodoc
class _$PomodoroMeasureCopyWithImpl<$Res, $Val extends PomodoroMeasure>
    implements $PomodoroMeasureCopyWith<$Res> {
  _$PomodoroMeasureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? info = null,
    Object? interval = freezed,
    Object? time = freezed,
    Object? timer = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PomodoroStatus,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PomodoroInfo,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as PomodoroInterval?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoroInfoCopyWith<$Res> get info {
    return $PomodoroInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoroIntervalCopyWith<$Res>? get interval {
    if (_value.interval == null) {
      return null;
    }

    return $PomodoroIntervalCopyWith<$Res>(_value.interval!, (value) {
      return _then(_value.copyWith(interval: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PomodoroMeasureCopyWith<$Res>
    implements $PomodoroMeasureCopyWith<$Res> {
  factory _$$_PomodoroMeasureCopyWith(
          _$_PomodoroMeasure value, $Res Function(_$_PomodoroMeasure) then) =
      __$$_PomodoroMeasureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PomodoroStatus status,
      PomodoroInfo info,
      PomodoroInterval? interval,
      int? time,
      Timer? timer});

  @override
  $PomodoroInfoCopyWith<$Res> get info;
  @override
  $PomodoroIntervalCopyWith<$Res>? get interval;
}

/// @nodoc
class __$$_PomodoroMeasureCopyWithImpl<$Res>
    extends _$PomodoroMeasureCopyWithImpl<$Res, _$_PomodoroMeasure>
    implements _$$_PomodoroMeasureCopyWith<$Res> {
  __$$_PomodoroMeasureCopyWithImpl(
      _$_PomodoroMeasure _value, $Res Function(_$_PomodoroMeasure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? info = null,
    Object? interval = freezed,
    Object? time = freezed,
    Object? timer = freezed,
  }) {
    return _then(_$_PomodoroMeasure(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PomodoroStatus,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PomodoroInfo,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as PomodoroInterval?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
    ));
  }
}

/// @nodoc

class _$_PomodoroMeasure implements _PomodoroMeasure {
  const _$_PomodoroMeasure(
      {this.status = PomodoroStatus.waiting,
      required this.info,
      this.interval,
      this.time,
      this.timer});

  @override
  @JsonKey()
  final PomodoroStatus status;
  @override
  final PomodoroInfo info;
  @override
  final PomodoroInterval? interval;
  @override
  final int? time;
  @override
  final Timer? timer;

  @override
  String toString() {
    return 'PomodoroMeasure(status: $status, info: $info, interval: $interval, time: $time, timer: $timer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroMeasure &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, info, interval, time, timer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PomodoroMeasureCopyWith<_$_PomodoroMeasure> get copyWith =>
      __$$_PomodoroMeasureCopyWithImpl<_$_PomodoroMeasure>(this, _$identity);
}

abstract class _PomodoroMeasure implements PomodoroMeasure {
  const factory _PomodoroMeasure(
      {final PomodoroStatus status,
      required final PomodoroInfo info,
      final PomodoroInterval? interval,
      final int? time,
      final Timer? timer}) = _$_PomodoroMeasure;

  @override
  PomodoroStatus get status;
  @override
  PomodoroInfo get info;
  @override
  PomodoroInterval? get interval;
  @override
  int? get time;
  @override
  Timer? get timer;
  @override
  @JsonKey(ignore: true)
  _$$_PomodoroMeasureCopyWith<_$_PomodoroMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}
