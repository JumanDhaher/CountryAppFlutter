import 'package:country_app/provider/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../dummy_data.dart';

class DetailsCountryScreen extends StatefulWidget {
  static const nameRoute = '/details-country';

  @override
  _DetailsCountryScreenState createState() => _DetailsCountryScreenState();
}

class _DetailsCountryScreenState extends State<DetailsCountryScreen> {

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final country = Provider.of<CountryProvider>(context).countryList.firstWhere((idCountry) => idCountry.id == id);
    //dummyData.firstWhere((idCountry) => idCountry.id == id);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: country.isFav ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  country.isFav = !country.isFav;
                });
              })
        ],
        centerTitle: true,
        title: Text(country.name),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(country.image, fit: BoxFit.cover),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Text(
              country.descreptions,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
