import 'package:country_app/provider/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/country_item.dart';
import '../widgets/main_drawer.dart';

class OverviewCountryScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final country = Provider.of<CountryProvider>(context).countryList;
    return Scaffold(
      drawer: MainDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Country'),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: country.length,
          itemBuilder: (context, i) => CountryItem(country[i].image,
              country[i].name, country[i].id),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
        ));
  }
}
