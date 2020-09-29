import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/favorites_screens.dart';
import './screens/overview_country_screens.dart';
import './screens/details_country_screen.dart';
import './provider/country_provider.dart';
import './screens/notfication_screen.dart';
void main(){
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (ctx) => CountryProvider(),
    child: MaterialApp(
      routes: {
        '/': (ctx) => MyHomePage(),
        // OverviewCountryScreens(),
        DetailsCountryScreen.nameRoute : (ctx) => DetailsCountryScreen(),
        FavoriteScreens.routeName :(ctx)=> FavoriteScreens(),
      },
    ),
    );
  }
}