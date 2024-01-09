// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TreeModelImpl _$$TreeModelImplFromJson(Map<String, dynamic> json) =>
    _$TreeModelImpl(
      client_id: json['client_id'] as String?,
      username: json['username'] as String?,
      account_type: json['account_type'] as String?,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => TreeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TreeModelImplToJson(_$TreeModelImpl instance) =>
    <String, dynamic>{
      'client_id': instance.client_id,
      'username': instance.username,
      'account_type': instance.account_type,
      'children': instance.children,
    };
