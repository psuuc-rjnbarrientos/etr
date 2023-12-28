import 'package:etr_temp/components/country_tile.dart';
import 'package:etr_temp/data/back_data.dart';
import 'package:etr_temp/models/continent.dart';
import 'package:etr_temp/screens/about_screen.dart';
import 'package:etr_temp/screens/continent_list.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountryListScreen extends StatelessWidget {
  CountryListScreen({super.key, required this.continent});

  Continent continent;
  var countryList = [];

  @override
  Widget build(BuildContext context) {
    countryList = COUNTRIES
        .where((recipe) => recipe.continentId == continent.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(continent.name),
        centerTitle: true,
        backgroundColor: continent.color,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'GeoGlimpse',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContinentListScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1.5,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: countryList.length,
        itemBuilder: (context, index) {
          return CountryTile(countryList[index], continent);
        },
      ),
    );
  }
}
