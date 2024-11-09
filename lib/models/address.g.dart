// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryAddressImpl _$$DeliveryAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryAddressImpl(
      id: json['id'] as String,
      fullAddress: json['fullAddress'] as String,
      street: json['street'] as String,
      apartment: json['apartment'] as String?,
      emirate: json['emirate'] as String,
      coordinates: LatLng.fromJson(json['coordinates'] as Map<String, dynamic>),
      isDefault: json['isDefault'] as bool? ?? false,
      type: $enumDecodeNullable(_$AddressTypeEnumMap, json['type']) ??
          AddressType.home,
    );

Map<String, dynamic> _$$DeliveryAddressImplToJson(
        _$DeliveryAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullAddress': instance.fullAddress,
      'street': instance.street,
      'apartment': instance.apartment,
      'emirate': instance.emirate,
      'coordinates': instance.coordinates,
      'isDefault': instance.isDefault,
      'type': _$AddressTypeEnumMap[instance.type]!,
    };

const _$AddressTypeEnumMap = {
  AddressType.home: 'home',
  AddressType.work: 'work',
  AddressType.other: 'other',
};

_$LatLngImpl _$$LatLngImplFromJson(Map<String, dynamic> json) => _$LatLngImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$LatLngImplToJson(_$LatLngImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
