// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TreeModel _$TreeModelFromJson(Map<String, dynamic> json) {
  return _TreeModel.fromJson(json);
}

/// @nodoc
mixin _$TreeModel {
  String? get client_id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get account_type => throw _privateConstructorUsedError;
  List<TreeModel>? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreeModelCopyWith<TreeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeModelCopyWith<$Res> {
  factory $TreeModelCopyWith(TreeModel value, $Res Function(TreeModel) then) =
      _$TreeModelCopyWithImpl<$Res, TreeModel>;
  @useResult
  $Res call(
      {String? client_id,
      String? username,
      String? account_type,
      List<TreeModel>? children});
}

/// @nodoc
class _$TreeModelCopyWithImpl<$Res, $Val extends TreeModel>
    implements $TreeModelCopyWith<$Res> {
  _$TreeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client_id = freezed,
    Object? username = freezed,
    Object? account_type = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      account_type: freezed == account_type
          ? _value.account_type
          : account_type // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<TreeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeModelImplCopyWith<$Res>
    implements $TreeModelCopyWith<$Res> {
  factory _$$TreeModelImplCopyWith(
          _$TreeModelImpl value, $Res Function(_$TreeModelImpl) then) =
      __$$TreeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? client_id,
      String? username,
      String? account_type,
      List<TreeModel>? children});
}

/// @nodoc
class __$$TreeModelImplCopyWithImpl<$Res>
    extends _$TreeModelCopyWithImpl<$Res, _$TreeModelImpl>
    implements _$$TreeModelImplCopyWith<$Res> {
  __$$TreeModelImplCopyWithImpl(
      _$TreeModelImpl _value, $Res Function(_$TreeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client_id = freezed,
    Object? username = freezed,
    Object? account_type = freezed,
    Object? children = freezed,
  }) {
    return _then(_$TreeModelImpl(
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      account_type: freezed == account_type
          ? _value.account_type
          : account_type // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<TreeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreeModelImpl implements _TreeModel {
  const _$TreeModelImpl(
      {this.client_id,
      this.username,
      this.account_type,
      final List<TreeModel>? children = const []})
      : _children = children;

  factory _$TreeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreeModelImplFromJson(json);

  @override
  final String? client_id;
  @override
  final String? username;
  @override
  final String? account_type;
  final List<TreeModel>? _children;
  @override
  @JsonKey()
  List<TreeModel>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TreeModel(client_id: $client_id, username: $username, account_type: $account_type, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeModelImpl &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.account_type, account_type) ||
                other.account_type == account_type) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, client_id, username,
      account_type, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeModelImplCopyWith<_$TreeModelImpl> get copyWith =>
      __$$TreeModelImplCopyWithImpl<_$TreeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreeModelImplToJson(
      this,
    );
  }
}

abstract class _TreeModel implements TreeModel {
  const factory _TreeModel(
      {final String? client_id,
      final String? username,
      final String? account_type,
      final List<TreeModel>? children}) = _$TreeModelImpl;

  factory _TreeModel.fromJson(Map<String, dynamic> json) =
      _$TreeModelImpl.fromJson;

  @override
  String? get client_id;
  @override
  String? get username;
  @override
  String? get account_type;
  @override
  List<TreeModel>? get children;
  @override
  @JsonKey(ignore: true)
  _$$TreeModelImplCopyWith<_$TreeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
