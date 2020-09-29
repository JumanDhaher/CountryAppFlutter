import 'package:country_app/screens/favorites_screens.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildListTile(IconData iconData, String title, Function tapHandler) {
    return ListTile(
        leading: Icon(iconData, size: 26),
        title: Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        onTap: tapHandler);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            child: Text(
              'Hello',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildListTile(Icons.home, 'All Country', () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          _buildListTile(Icons.star, 'Favoirtes', () {
            Navigator.of(context).pushReplacementNamed(FavoriteScreens.routeName);
          })
        ],
      ),
    );
  }
}
