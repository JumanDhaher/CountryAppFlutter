import 'package:flutter/material.dart';
import '../screens/details_country_screen.dart';
class CountryItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String id;
  CountryItem(this.imageUrl,this.name,this.id);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(
          DetailsCountryScreen.nameRoute,
          arguments: id
        );
      },
        child: GridTile(
        child: Image.network(imageUrl, fit: BoxFit.cover,),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(name, textAlign: TextAlign.center),
        ),
        ),
    );
  }
}
