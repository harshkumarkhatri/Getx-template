// To parse this JSON data, do
//
//     final ordersModel = ordersModelFromJson(jsonString);

// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_model.freezed.dart';
part 'tree_model.g.dart';

@freezed
class TreeModel with _$TreeModel {
  const factory TreeModel({
    String? client_id,
    String? username,
    String? account_type,
    @Default([]) List<TreeModel>? children,
  }) = _TreeModel;

  factory TreeModel.fromJson(Map<String, dynamic> json) =>
      _$TreeModelFromJson(json);
}
