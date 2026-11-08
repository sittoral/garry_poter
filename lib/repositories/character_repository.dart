import 'package:dio/dio.dart';
import '../models/character_model.dart';

class CharacterRepository {
  final Dio _dio = Dio();

  Future<List<CharacterModel>> getCharacters() async {
    final response = await _dio.get(
      'https://potterapi-fedeperin.vercel.app/en/characters',
    );

    final list = response.data as List;
    return list.map((e) => CharacterModel.fromJson(e)).toList();
  }
}