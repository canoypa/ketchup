// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pomodoro_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PomodoroInfo {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PomodoroInfoCopyWith<PomodoroInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroInfoCopyWith<$Res> {
  factory $PomodoroInfoCopyWith(
          PomodoroInfo value, $Res Function(PomodoroInfo) then) =
      _$PomodoroInfoCopyWithImpl<$Res, PomodoroInfo>;
  @useResult
  $Res call({String id, DateTime createdAt, String? title, String? categoryId});
}

/// @nodoc
class _$PomodoroInfoCopyWithImpl<$Res, $Val extends PomodoroInfo>
    implements $PomodoroInfoCopyWith<$Res> {
  _$PomodoroInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? title = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PomodoroInfoCopyWith<$Res>
    implements $PomodoroInfoCopyWith<$Res> {
  factory _$$_PomodoroInfoCopyWith(
          _$_PomodoroInfo value, $Res Function(_$_PomodoroInfo) then) =
      __$$_PomodoroInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime createdAt, String? title, String? categoryId});
}

/// @nodoc
class __$$_PomodoroInfoCopyWithImpl<$Res>
    extends _$PomodoroInfoCopyWithImpl<$Res, _$_PomodoroInfo>
    implements _$$_PomodoroInfoCopyWith<$Res> {
  __$$_PomodoroInfoCopyWithImpl(
      _$_PomodoroInfo _value, $Res Function(_$_PomodoroInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? title = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_$_PomodoroInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PomodoroInfo extends _PomodoroInfo {
  const _$_PomodoroInfo(
      {required this.id, required this.createdAt, this.title, this.categoryId})
      : super._();

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String? title;
  @override
  final String? categoryId;

  @override
  String toString() {
    return 'PomodoroInfo(id: $id, createdAt: $createdAt, title: $title, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, title, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PomodoroInfoCopyWith<_$_PomodoroInfo> get copyWith =>
      __$$_PomodoroInfoCopyWithImpl<_$_PomodoroInfo>(this, _$identity);
}

abstract class _PomodoroInfo extends PomodoroInfo {
  const factory _PomodoroInfo(
      {required final String id,
      required final DateTime createdAt,
      final String? title,
      final String? categoryId}) = _$_PomodoroInfo;
  const _PomodoroInfo._() : super._();

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  String? get title;
  @override
  String? get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_PomodoroInfoCopyWith<_$_PomodoroInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
