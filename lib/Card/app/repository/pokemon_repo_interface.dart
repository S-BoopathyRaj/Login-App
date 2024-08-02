import 'package:login_app/Card/app/domain/pokemon.dart';
// import 'package:pokemon/app/domain/pokemon.dart';

abstract class PokemonRepoInterface {
  void addToFavoritesList(Pokemon pokemon);
  void addToObtainedList(Pokemon pokemon);
  Future<List<Pokemon>> getObtainedPokemon();
  Future<List<Pokemon>> getFavoritesPokemon();
  Future<List<Pokemon>> getAllPokemon();
}
