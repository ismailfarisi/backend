// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorMenuImpl _$$VendorMenuImplFromJson(Map<String, dynamic> json) =>
    _$VendorMenuImpl(
      id: json['id'] as String,
      vendorId: json['vendorId'] as String,
      mealType: $enumDecode(_$MealTypeEnumMap, json['mealType']),
      status: $enumDecode(_$MenuStatusEnumMap, json['status']),
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      weeklyMenu: (json['weeklyMenu'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DailyMenu.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$VendorMenuImplToJson(_$VendorMenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendorId': instance.vendorId,
      'mealType': _$MealTypeEnumMap[instance.mealType]!,
      'status': _$MenuStatusEnumMap[instance.status]!,
      'description': instance.description,
      'price': instance.price,
      'weeklyMenu': instance.weeklyMenu,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};

const _$MenuStatusEnumMap = {
  MenuStatus.active: 'active',
  MenuStatus.inactive: 'inactive',
  MenuStatus.deleted: 'deleted',
};

_$DailyMenuImpl _$$DailyMenuImplFromJson(Map<String, dynamic> json) =>
    _$DailyMenuImpl(
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
      sideDishes: (json['sideDishes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      extras:
          (json['extras'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DailyMenuImplToJson(_$DailyMenuImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'sideDishes': instance.sideDishes,
      'extras': instance.extras,
    };
