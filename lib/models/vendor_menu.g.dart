// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorMenuImpl _$$VendorMenuImplFromJson(Map<String, dynamic> json) =>
    _$VendorMenuImpl(
      vendorId: json['vendorId'] as String,
      mealType: $enumDecode(_$MealTypeEnumMap, json['mealType']),
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      sampleMenuItems: (json['sampleMenuItems'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$VendorMenuImplToJson(_$VendorMenuImpl instance) =>
    <String, dynamic>{
      'vendorId': instance.vendorId,
      'mealType': _$MealTypeEnumMap[instance.mealType]!,
      'description': instance.description,
      'price': instance.price,
      'sampleMenuItems': instance.sampleMenuItems,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};
