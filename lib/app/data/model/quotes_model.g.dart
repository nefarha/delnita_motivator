// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotesModelImpl _$$QuotesModelImplFromJson(Map<String, dynamic> json) =>
    _$QuotesModelImpl(
      id: json['id'] as String,
      author: json['author'] as String,
      quote: json['quote'] as String,
      createdAt: _fromTimestamp(json['created_at'] as Timestamp),
    );

Map<String, dynamic> _$$QuotesModelImplToJson(_$QuotesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'quote': instance.quote,
      'created_at': _toTimestamp(instance.createdAt),
    };
