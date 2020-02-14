import 'dart:io';

import 'package:http/http.dart';

class PokemonService {
  Future<HttpResponse> fetchAllPokemon() {
    return http.get("");
  }
}