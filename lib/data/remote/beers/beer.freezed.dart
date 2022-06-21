// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'beer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Beer _$BeerFromJson(Map<String, dynamic> json) {
  return _Beer.fromJson(json);
}

/// @nodoc
mixin _$Beer {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerCopyWith<Beer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerCopyWith<$Res> {
  factory $BeerCopyWith(Beer value, $Res Function(Beer) then) =
      _$BeerCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$BeerCopyWithImpl<$Res> implements $BeerCopyWith<$Res> {
  _$BeerCopyWithImpl(this._value, this._then);

  final Beer _value;
  // ignore: unused_field
  final $Res Function(Beer) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BeerCopyWith<$Res> implements $BeerCopyWith<$Res> {
  factory _$$_BeerCopyWith(_$_Beer value, $Res Function(_$_Beer) then) =
      __$$_BeerCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_BeerCopyWithImpl<$Res> extends _$BeerCopyWithImpl<$Res>
    implements _$$_BeerCopyWith<$Res> {
  __$$_BeerCopyWithImpl(_$_Beer _value, $Res Function(_$_Beer) _then)
      : super(_value, (v) => _then(v as _$_Beer));

  @override
  _$_Beer get _value => super._value as _$_Beer;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_Beer(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Beer implements _Beer {
  _$_Beer({required this.name});

  factory _$_Beer.fromJson(Map<String, dynamic> json) => _$$_BeerFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Beer(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Beer &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_BeerCopyWith<_$_Beer> get copyWith =>
      __$$_BeerCopyWithImpl<_$_Beer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeerToJson(this);
  }
}

abstract class _Beer implements Beer {
  factory _Beer({required final String name}) = _$_Beer;

  factory _Beer.fromJson(Map<String, dynamic> json) = _$_Beer.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BeerCopyWith<_$_Beer> get copyWith => throw _privateConstructorUsedError;
}
