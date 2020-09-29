import 'package:provider/provider.dart';

import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import '../widgets/country_item.dart';
import '../provider/country_provider.dart';

class FavoriteScreens extends StatelessWidget {
  static const routeName = '/fav-screens';
  @override
  Widget build(BuildContext context) {
    final country = Provider.of<CountryProvider>(context).favData;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favorite'),
      ),
      drawer: MainDrawer(),
      body: country.length == 0 
      ? Center(child: Text('Nothing...'),)
      : GridView.builder(
        itemCount: country.length,
        itemBuilder: (ctx, i) =>  CountryItem(country[i].image,
              country[i].name, country[i].id),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
           ),),
    );
  }
}
