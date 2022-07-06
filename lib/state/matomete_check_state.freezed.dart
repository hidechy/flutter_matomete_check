// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'matomete_check_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatometeCheckState {
  List<String> get record => throw _privateConstructorUsedError;
  Map<String, bool> get checkValues => throw _privateConstructorUsedError;
  bool get allCheck => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatometeCheckStateCopyWith<MatometeCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatometeCheckStateCopyWith<$Res> {
  factory $MatometeCheckStateCopyWith(
          MatometeCheckState value, $Res Function(MatometeCheckState) then) =
      _$MatometeCheckStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> record, Map<String, bool> checkValues, bool allCheck});
}

/// @nodoc
class _$MatometeCheckStateCopyWithImpl<$Res>
    implements $MatometeCheckStateCopyWith<$Res> {
  _$MatometeCheckStateCopyWithImpl(this._value, this._then);

  final MatometeCheckState _value;
  // ignore: unused_field
  final $Res Function(MatometeCheckState) _then;

  @override
  $Res call({
    Object? record = freezed,
    Object? checkValues = freezed,
    Object? allCheck = freezed,
  }) {
    return _then(_value.copyWith(
      record: record == freezed
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as List<String>,
      checkValues: checkValues == freezed
          ? _value.checkValues
          : checkValues // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      allCheck: allCheck == freezed
          ? _value.allCheck
          : allCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MatometeCheckStateCopyWith<$Res>
    implements $MatometeCheckStateCopyWith<$Res> {
  factory _$$_MatometeCheckStateCopyWith(_$_MatometeCheckState value,
          $Res Function(_$_MatometeCheckState) then) =
      __$$_MatometeCheckStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> record, Map<String, bool> checkValues, bool allCheck});
}

/// @nodoc
class __$$_MatometeCheckStateCopyWithImpl<$Res>
    extends _$MatometeCheckStateCopyWithImpl<$Res>
    implements _$$_MatometeCheckStateCopyWith<$Res> {
  __$$_MatometeCheckStateCopyWithImpl(
      _$_MatometeCheckState _value, $Res Function(_$_MatometeCheckState) _then)
      : super(_value, (v) => _then(v as _$_MatometeCheckState));

  @override
  _$_MatometeCheckState get _value => super._value as _$_MatometeCheckState;

  @override
  $Res call({
    Object? record = freezed,
    Object? checkValues = freezed,
    Object? allCheck = freezed,
  }) {
    return _then(_$_MatometeCheckState(
      record: record == freezed
          ? _value._record
          : record // ignore: cast_nullable_to_non_nullable
              as List<String>,
      checkValues: checkValues == freezed
          ? _value._checkValues
          : checkValues // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      allCheck: allCheck == freezed
          ? _value.allCheck
          : allCheck // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MatometeCheckState implements _MatometeCheckState {
  const _$_MatometeCheckState(
      {required final List<String> record,
      required final Map<String, bool> checkValues,
      required this.allCheck})
      : _record = record,
        _checkValues = checkValues;

  final List<String> _record;
  @override
  List<String> get record {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_record);
  }

  final Map<String, bool> _checkValues;
  @override
  Map<String, bool> get checkValues {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_checkValues);
  }

  @override
  final bool allCheck;

  @override
  String toString() {
    return 'MatometeCheckState(record: $record, checkValues: $checkValues, allCheck: $allCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatometeCheckState &&
            const DeepCollectionEquality().equals(other._record, _record) &&
            const DeepCollectionEquality()
                .equals(other._checkValues, _checkValues) &&
            const DeepCollectionEquality().equals(other.allCheck, allCheck));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_record),
      const DeepCollectionEquality().hash(_checkValues),
      const DeepCollectionEquality().hash(allCheck));

  @JsonKey(ignore: true)
  @override
  _$$_MatometeCheckStateCopyWith<_$_MatometeCheckState> get copyWith =>
      __$$_MatometeCheckStateCopyWithImpl<_$_MatometeCheckState>(
          this, _$identity);
}

abstract class _MatometeCheckState implements MatometeCheckState {
  const factory _MatometeCheckState(
      {required final List<String> record,
      required final Map<String, bool> checkValues,
      required final bool allCheck}) = _$_MatometeCheckState;

  @override
  List<String> get record => throw _privateConstructorUsedError;
  @override
  Map<String, bool> get checkValues => throw _privateConstructorUsedError;
  @override
  bool get allCheck => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MatometeCheckStateCopyWith<_$_MatometeCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}
