// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VendorMenu _$VendorMenuFromJson(Map<String, dynamic> json) => _VendorMenu(
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

Map<String, dynamic> _$VendorMenuToJson(_VendorMenu instance) =>
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

_DailyMenu _$DailyMenuFromJson(Map<String, dynamic> json) => _DailyMenu(
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
      sideDishes: (json['sideDishes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      extras:
          (json['extras'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DailyMenuToJson(_DailyMenu instance) =>
    <String, dynamic>{
      'items': instance.items,
      'sideDishes': instance.sideDishes,
      'extras': instance.extras,
    };
