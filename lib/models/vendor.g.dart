// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Vendor _$VendorFromJson(Map<String, dynamic> json) => _Vendor(
      id: json['id'] as String,
      name: json['name'] as String,
      businessName: json['businessName'] as String,
      address: json['address'] as String?,
      phone: json['phone'] as String,
      rating: (json['rating'] as num).toDouble(),
      totalRatings: (json['totalRatings'] as num).toInt(),
      profilePhotoUrl: json['profilePhotoUrl'] as String,
      coverPhotoUrl: json['coverPhotoUrl'] as String,
      cuisineTypes: (json['cuisineTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      foodTypes: (json['foodTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      menus: (json['menus'] as List<dynamic>?)
              ?.map((e) => VendorMenu.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isOpen: json['isOpen'] as bool? ?? true,
      closureMessage: json['closureMessage'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      acceptedPaymentMethods: (json['acceptedPaymentMethods'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$VendorToJson(_Vendor instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'businessName': instance.businessName,
      'address': instance.address,
      'phone': instance.phone,
      'rating': instance.rating,
      'totalRatings': instance.totalRatings,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'coverPhotoUrl': instance.coverPhotoUrl,
      'cuisineTypes': instance.cuisineTypes,
      'foodTypes': instance.foodTypes,
      'menus': instance.menus,
      'isOpen': instance.isOpen,
      'closureMessage': instance.closureMessage,
      'distance': instance.distance,
      'acceptedPaymentMethods': instance.acceptedPaymentMethods,
    };

_GeoPoint _$GeoPointFromJson(Map<String, dynamic> json) => _GeoPoint(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$GeoPointToJson(_GeoPoint instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
