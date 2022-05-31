import 'package:flutter/material.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/widgets/poke_information.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../widgets/poke_type_name.dart';
class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({Key? key,required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImage = 'assets/images/pokeball.png';
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType((pokemon.type![0])),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getIconPadding(),
              child: IconButton(
                iconSize: 24.h,
                  onPressed: (){
                Navigator.of(context).pop();
              }, icon: const Icon(Icons.arrow_back_ios)),

            ),
            PokeNameType(pokemon:pokemon),
            SizedBox(height: 20.h,),
            Expanded(child: Stack(
              children: [
                Positioned(child: Image.asset(pokeballImage,fit: BoxFit.fitHeight,),right: 0,top: 0,height: 0.15.sh,),
                Positioned(bottom: 0,left: 0,right: 0,top: 0.12.sh,child: PokeInformation(pokemon: pokemon)),
                Align(alignment: Alignment.topCenter,child: Hero(tag:pokemon.id!,child: CachedNetworkImage(imageUrl: pokemon.img??' , ',height: 0.25.sh,fit: BoxFit.fitHeight,)),),
              ],
            ))

          ],
        ),
      ),
    );
  }
}
