// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Paginator _$PaginatorFromJson(Map<String, dynamic> json) => _Paginator(
      itemCount: (json['itemCount'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
    );

Map<String, dynamic> _$PaginatorToJson(_Paginator instance) =>
    <String, dynamic>{
      'itemCount': instance.itemCount,
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
    };
