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
  PomodoroInfo get info => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroInfo info) waiting,
    required TResult Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)
        working,
    required TResult Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)
        breaking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroInfo info)? waiting,
    TResult? Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        working,
    TResult? Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        breaking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroInfo info)? waiting,
    TResult Function(PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        working,
    TResult Function(PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        breaking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Working value) working,
    required TResult Function(Breaking value) breaking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Working value)? working,
    TResult? Function(Breaking value)? breaking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Working value)? working,
    TResult Function(Breaking value)? breaking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
  $Res call({PomodoroInfo info});

  $PomodoroInfoCopyWith<$Res> get info;
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
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PomodoroInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoroInfoCopyWith<$Res> get info {
    return $PomodoroInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WaitingCopyWith<$Res>
    implements $PomodoroMeasureCopyWith<$Res> {
  factory _$$WaitingCopyWith(_$Waiting value, $Res Function(_$Waiting) then) =
      __$$WaitingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PomodoroInfo info});

  @override
  $PomodoroInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$WaitingCopyWithImpl<$Res>
    extends _$PomodoroMeasureCopyWithImpl<$Res, _$Waiting>
    implements _$$WaitingCopyWith<$Res> {
  __$$WaitingCopyWithImpl(_$Waiting _value, $Res Function(_$Waiting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$Waiting(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PomodoroInfo,
    ));
  }
}

/// @nodoc

class _$Waiting implements Waiting {
  const _$Waiting({required this.info});

  @override
  final PomodoroInfo info;

  @override
  String toString() {
    return 'PomodoroMeasure.waiting(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Waiting &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitingCopyWith<_$Waiting> get copyWith =>
      __$$WaitingCopyWithImpl<_$Waiting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroInfo info) waiting,
    required TResult Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)
        working,
    required TResult Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)
        breaking,
  }) {
    return waiting(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroInfo info)? waiting,
    TResult? Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        working,
    TResult? Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        breaking,
  }) {
    return waiting?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroInfo info)? waiting,
    TResult Function(PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        working,
    TResult Function(PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        breaking,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Working value) working,
    required TResult Function(Breaking value) breaking,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Working value)? working,
    TResult? Function(Breaking value)? breaking,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Working value)? working,
    TResult Function(Breaking value)? breaking,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class Waiting implements PomodoroMeasure {
  const factory Waiting({required final PomodoroInfo info}) = _$Waiting;

  @override
  PomodoroInfo get info;
  @override
  @JsonKey(ignore: true)
  _$$WaitingCopyWith<_$Waiting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkingCopyWith<$Res>
    implements $PomodoroMeasureCopyWith<$Res> {
  factory _$$WorkingCopyWith(_$Working value, $Res Function(_$Working) then) =
      __$$WorkingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PomodoroInfo info, PomodoroInterval interval, Timer timer});

  @override
  $PomodoroInfoCopyWith<$Res> get info;
  $PomodoroIntervalCopyWith<$Res> get interval;
}

/// @nodoc
class __$$WorkingCopyWithImpl<$Res>
    extends _$PomodoroMeasureCopyWithImpl<$Res, _$Working>
    implements _$$WorkingCopyWith<$Res> {
  __$$WorkingCopyWithImpl(_$Working _value, $Res Function(_$Working) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? interval = null,
    Object? timer = null,
  }) {
    return _then(_$Working(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PomodoroInfo,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as PomodoroInterval,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoroIntervalCopyWith<$Res> get interval {
    return $PomodoroIntervalCopyWith<$Res>(_value.interval, (value) {
      return _then(_value.copyWith(interval: value));
    });
  }
}

/// @nodoc

class _$Working implements Working {
  const _$Working(
      {required this.info, required this.interval, required this.timer});

  @override
  final PomodoroInfo info;
  @override
  final PomodoroInterval interval;
  @override
  final Timer timer;

  @override
  String toString() {
    return 'PomodoroMeasure.working(info: $info, interval: $interval, timer: $timer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Working &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info, interval, timer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingCopyWith<_$Working> get copyWith =>
      __$$WorkingCopyWithImpl<_$Working>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroInfo info) waiting,
    required TResult Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)
        working,
    required TResult Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)
        breaking,
  }) {
    return working(info, interval, timer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroInfo info)? waiting,
    TResult? Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        working,
    TResult? Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        breaking,
  }) {
    return working?.call(info, interval, timer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroInfo info)? waiting,
    TResult Function(PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        working,
    TResult Function(PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        breaking,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working(info, interval, timer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Working value) working,
    required TResult Function(Breaking value) breaking,
  }) {
    return working(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Working value)? working,
    TResult? Function(Breaking value)? breaking,
  }) {
    return working?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Working value)? working,
    TResult Function(Breaking value)? breaking,
    required TResult orElse(),
  }) {
    if (working != null) {
      return working(this);
    }
    return orElse();
  }
}

abstract class Working implements PomodoroMeasure {
  const factory Working(
      {required final PomodoroInfo info,
      required final PomodoroInterval interval,
      required final Timer timer}) = _$Working;

  @override
  PomodoroInfo get info;
  PomodoroInterval get interval;
  Timer get timer;
  @override
  @JsonKey(ignore: true)
  _$$WorkingCopyWith<_$Working> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BreakingCopyWith<$Res>
    implements $PomodoroMeasureCopyWith<$Res> {
  factory _$$BreakingCopyWith(
          _$Breaking value, $Res Function(_$Breaking) then) =
      __$$BreakingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PomodoroInfo info, PomodoroInterval interval, Timer timer});

  @override
  $PomodoroInfoCopyWith<$Res> get info;
  $PomodoroIntervalCopyWith<$Res> get interval;
}

/// @nodoc
class __$$BreakingCopyWithImpl<$Res>
    extends _$PomodoroMeasureCopyWithImpl<$Res, _$Breaking>
    implements _$$BreakingCopyWith<$Res> {
  __$$BreakingCopyWithImpl(_$Breaking _value, $Res Function(_$Breaking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? interval = null,
    Object? timer = null,
  }) {
    return _then(_$Breaking(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PomodoroInfo,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as PomodoroInterval,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PomodoroIntervalCopyWith<$Res> get interval {
    return $PomodoroIntervalCopyWith<$Res>(_value.interval, (value) {
      return _then(_value.copyWith(interval: value));
    });
  }
}

/// @nodoc

class _$Breaking implements Breaking {
  const _$Breaking(
      {required this.info, required this.interval, required this.timer});

  @override
  final PomodoroInfo info;
  @override
  final PomodoroInterval interval;
  @override
  final Timer timer;

  @override
  String toString() {
    return 'PomodoroMeasure.breaking(info: $info, interval: $interval, timer: $timer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Breaking &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info, interval, timer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreakingCopyWith<_$Breaking> get copyWith =>
      __$$BreakingCopyWithImpl<_$Breaking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PomodoroInfo info) waiting,
    required TResult Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)
        working,
    required TResult Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)
        breaking,
  }) {
    return breaking(info, interval, timer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PomodoroInfo info)? waiting,
    TResult? Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        working,
    TResult? Function(
            PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        breaking,
  }) {
    return breaking?.call(info, interval, timer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PomodoroInfo info)? waiting,
    TResult Function(PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        working,
    TResult Function(PomodoroInfo info, PomodoroInterval interval, Timer timer)?
        breaking,
    required TResult orElse(),
  }) {
    if (breaking != null) {
      return breaking(info, interval, timer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Working value) working,
    required TResult Function(Breaking value) breaking,
  }) {
    return breaking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Working value)? working,
    TResult? Function(Breaking value)? breaking,
  }) {
    return breaking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Working value)? working,
    TResult Function(Breaking value)? breaking,
    required TResult orElse(),
  }) {
    if (breaking != null) {
      return breaking(this);
    }
    return orElse();
  }
}

abstract class Breaking implements PomodoroMeasure {
  const factory Breaking(
      {required final PomodoroInfo info,
      required final PomodoroInterval interval,
      required final Timer timer}) = _$Breaking;

  @override
  PomodoroInfo get info;
  PomodoroInterval get interval;
  Timer get timer;
  @override
  @JsonKey(ignore: true)
  _$$BreakingCopyWith<_$Breaking> get copyWith =>
      throw _privateConstructorUsedError;
}
