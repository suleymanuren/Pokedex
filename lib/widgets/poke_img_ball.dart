import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';
class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String pokeballImage = 'assets/images/pokeball.png';
    return Stack(
      children: [
        Align(alignment: Alignment.bottomRight,
            child: Image.asset(pokeballImage,width: UIHelper.calculatePokeImagAndBallSize(),height: UIHelper.calculatePokeImagAndBallSize(),fit: BoxFit.fitHeight,)),


        Align(alignment: Alignment.bottomRight,
            child: Hero(tag: pokemon.id!,
              child: CachedNetworkImage(imageUrl: pokemon.img??'',width: UIHelper.calculatePokeImagAndBallSize(),height: UIHelper.calculatePokeImagAndBallSize(),fit: BoxFit.fitHeight,placeholder: (context,url)=> CircularProgressIndicator(
                color: Colors.black,
              ),),
            )),
      ],
    );
  }
}
