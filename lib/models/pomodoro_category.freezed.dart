// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pomodoro_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PomodoroCategory {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PomodoroCategoryCopyWith<PomodoroCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroCategoryCopyWith<$Res> {
  factory $PomodoroCategoryCopyWith(
          PomodoroCategory value, $Res Function(PomodoroCategory) then) =
      _$PomodoroCategoryCopyWithImpl<$Res, PomodoroCategory>;
  @useResult
  $Res call({String id, String title, Color color});
}

/// @nodoc
class _$PomodoroCategoryCopyWithImpl<$Res, $Val extends PomodoroCategory>
    implements $PomodoroCategoryCopyWith<$Res> {
  _$PomodoroCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PomodoroCategoryCopyWith<$Res>
    implements $PomodoroCategoryCopyWith<$Res> {
  factory _$$_PomodoroCategoryCopyWith(
          _$_PomodoroCategory value, $Res Function(_$_PomodoroCategory) then) =
      __$$_PomodoroCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, Color color});
}

/// @nodoc
class __$$_PomodoroCategoryCopyWithImpl<$Res>
    extends _$PomodoroCategoryCopyWithImpl<$Res, _$_PomodoroCategory>
    implements _$$_PomodoroCategoryCopyWith<$Res> {
  __$$_PomodoroCategoryCopyWithImpl(
      _$_PomodoroCategory _value, $Res Function(_$_PomodoroCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? color = null,
  }) {
    return _then(_$_PomodoroCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_PomodoroCategory extends _PomodoroCategory {
  const _$_PomodoroCategory(
      {required this.id, required this.title, required this.color})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final Color color;

  @override
  String toString() {
    return 'PomodoroCategory(id: $id, title: $title, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PomodoroCategoryCopyWith<_$_PomodoroCategory> get copyWith =>
      __$$_PomodoroCategoryCopyWithImpl<_$_PomodoroCategory>(this, _$identity);
}

abstract class _PomodoroCategory extends PomodoroCategory {
  const factory _PomodoroCategory(
      {required final String id,
      required final String title,
      required final Color color}) = _$_PomodoroCategory;
  const _PomodoroCategory._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_PomodoroCategoryCopyWith<_$_PomodoroCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
