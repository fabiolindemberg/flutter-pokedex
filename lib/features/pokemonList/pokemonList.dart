import 'package:flutter/material.dart';

class PokemonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
      ),
      body: ListView(children: <Widget>[
          listItem(Pokemon("Name", "Descricao", "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png")),
          listItem(Pokemon("Name", "Descricao", "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png"))
      ],
      ),

    );
  }

  Widget listItem(Pokemon pokemon) {
    return Container(
      height: 70,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.network(pokemon.imageUrl),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text(pokemon.name),
                  Text(pokemon.description)
                ],)
              ],),
              Icon(Icons.chevron_right)
          ],)
         ),
    );
  }
}

class Pokemon {
  String name;
  String description;
  String imageUrl;

  Pokemon(this.name, this.description, this.imageUrl);
}