import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String title ='Pokedex';
  static TextStyle getTitleTextStyle(){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48,

    );
  }
  static TextStyle getPokemonNameTextStyle(){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30,

    );
  }
  static TextStyle getTypeChipTextStyle(){
    return TextStyle(
      color: Colors.white,

      fontSize: 20,

    );
  }

  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: 16,color: Colors.black);
  }
  static getPokeInfoLabelTextStyle() {
    return TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black);
  }
}