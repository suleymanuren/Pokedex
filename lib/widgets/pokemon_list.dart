import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/widgets/pokedex_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/pokemon_model.dart';
import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonListFuture;
  @override
  void initState() {
    _pokemonListFuture = PokeApi.getPokemonData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
        future: PokeApi.getPokemonData(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            List<PokemonModel> _listem = snapshot.data!;
            return GridView.builder(itemCount: _listem.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation==Orientation.portrait?2:3), itemBuilder: (context,index)=>PokeListItem(pokemon: _listem[index]));


          }
          else if(snapshot.hasError){
            return Center(child: Text('Hata Çıktı'),);
          }
          else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        } ,
      );

  }
}
