import 'package:etr_temp/components/continent_tile.dart';
import 'package:etr_temp/data/back_data.dart';
import 'package:etr_temp/screens/about_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContinentListScreen extends StatelessWidget {
  ContinentListScreen({super.key});

  var continentList = CONTINENTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to GeoGlimpse',
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
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
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1.5,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: continentList.map((element) {
          return ContinentTile(
            continent: element,
          );
        }).toList(),
      ),
    );
  }
}

//someClass.map(function(element) => return something); -> Iterable<something>.toList();
