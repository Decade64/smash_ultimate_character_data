// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Favorites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Favorites _$FavoritesFromJson(Map<String, dynamic> json) {
  return Favorites(
    favoriteFighters:
        (json['favoriteFighters'] as List).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$FavoritesToJson(Favorites instance) => <String, dynamic>{
      'favoriteFighters': instance.favoriteFighters,
    };
