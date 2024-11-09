// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuItemImpl _$$MenuItemImplFromJson(Map<String, dynamic> json) =>
    _$MenuItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
      isVegetarian: json['isVegetarian'] as bool? ?? false,
      allergens: (json['allergens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MenuItemImplToJson(_$MenuItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'isVegetarian': instance.isVegetarian,
      'allergens': instance.allergens,
    };

_$DailyMenuImpl _$$DailyMenuImplFromJson(Map<String, dynamic> json) =>
    _$DailyMenuImpl(
      date: DateTime.parse(json['date'] as String),
      breakfastOptions: (json['breakfastOptions'] as List<dynamic>?)
              ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lunchOptions: (json['lunchOptions'] as List<dynamic>?)
              ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dinnerOptions: (json['dinnerOptions'] as List<dynamic>?)
              ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DailyMenuImplToJson(_$DailyMenuImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'breakfastOptions': instance.breakfastOptions,
      'lunchOptions': instance.lunchOptions,
      'dinnerOptions': instance.dinnerOptions,
    };

_$WeeklyMenuImpl _$$WeeklyMenuImplFromJson(Map<String, dynamic> json) =>
    _$WeeklyMenuImpl(
      id: json['id'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      dailyMenus: (json['dailyMenus'] as List<dynamic>?)
              ?.map((e) => DailyMenu.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WeeklyMenuImplToJson(_$WeeklyMenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'dailyMenus': instance.dailyMenus,
    };
