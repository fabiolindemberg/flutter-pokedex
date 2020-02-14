import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/features/onboarding/onBoardingItem.dart';
import 'package:pokedex/features/pokemonList/pokemonList.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(children: <Widget>[
      this.pageItem(OnBoardingItem("lib/images/jiggly.png", "Jiggly", "Secondary Text", null)),
      this.pageItem(OnBoardingItem("lib/images/bulbasaur.png", "Bulbasaur", "Secondary Text", null)),
      this.pageItem(OnBoardingItem("lib/images/charmander.png", "Charmander", "Secondary Text", null)),
      this.pageItem(OnBoardingItem("lib/images/squirtle.png", "Squirtle", "Secondary Text", Button("Get Started Now!!", () {
        Navigator.of(context).push(MaterialPageRoute(builder: (contex) => PokemonList()));
      }))),

    ],);
  }

  Stack pageItem(OnBoardingItem item) {
    return Stack(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(item.image)
            )
          ),
        ),
        Container(color: Color(0x000000).withOpacity(0.6),),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(item.primaryText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
                  ),
                Text(item.secondaryText,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                  ),
                ),
                item.button == null ? Container() : button(item.button),
              ],
            ),
          ),
        )
    ],
  );
  }

  Container button(Button button) {
    return Container(
                child: RaisedButton(
                  onPressed: button.onClick,
                  child: Text(button.label,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14),),
                ),
              );
  }
}

