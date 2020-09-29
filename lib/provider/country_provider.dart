import 'package:flutter/material.dart';
import '../models/country.dart';

class CountryProvider with ChangeNotifier {
  List<Country> _list = [
    Country(
        id: 'a1',
        name: 'America',
        descreptions:
            'The United States of America (USA), commonly known as the United States (U.S. or US) or America, is a country consisting of 50 states, a federal district, five major self-governing territories, and various possessions.[g] At 3.8 million square miles (9.8 million km2), it is the world\'s third- or fourth-largest country by total area.',
        image:
            'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1235px-Flag_of_the_United_States.svg.png'),
    Country(
        id: 'a2',
        name: 'United Kingdom',
        descreptions:
            'The United Kingdom of Great Britain and Northern Ireland, commonly known as the United Kingdom (UK or U.K.)[14] or Britain,[note 10] is a sovereign country located off the north­western coast of the European mainland. ',
        image:
            'https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1024px-Flag_of_the_United_Kingdom.svg.png'),
    Country(
        id: 'a3',
        name: 'South Korea',
        descreptions:
            'The flag of South Korea, also known as the Taegukgi (also spelled as Taegeukgi, lit. '
            "Taegeuk flag"
            '), has three parts: a white rectangular background, a red and blue Taegeuk in its center, and four black trigrams one toward each corner. The first pattern of Taegukgi was made by Kojong.',
        image:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/1024px-Flag_of_South_Korea.svg.png'),
  ];

  List<Country> get countryList {
    return [..._list];
  }

  List<Country> get favData {
    var newList = _list.where((favCountry) => favCountry.isFav).toList();
    return newList;
  }
  
}
