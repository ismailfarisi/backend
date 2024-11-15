// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toDouble(),
      totalRatings: (json['totalRatings'] as num?)?.toInt() ?? 0,
      imageUrl: json['imageUrl'] as String,
      specialities: (json['specialities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      availableMealTypes: (json['availableMealTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$MealTypeEnumMap, e))
              .toList() ??
          const [],
      mealPrices: (json['mealPrices'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$MealTypeEnumMap, k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'rating': instance.rating,
      'totalRatings': instance.totalRatings,
      'imageUrl': instance.imageUrl,
      'specialities': instance.specialities,
      'availableMealTypes': instance.availableMealTypes
          .map((e) => _$MealTypeEnumMap[e]!)
          .toList(),
      'mealPrices':
          instance.mealPrices.map((k, e) => MapEntry(_$MealTypeEnumMap[k]!, e)),
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};
