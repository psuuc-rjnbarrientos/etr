import 'package:etr_temp/models/continent.dart';
import 'package:etr_temp/models/country.dart';
import 'package:etr_temp/screens/about_screen.dart';
import 'package:etr_temp/screens/continent_list.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountryViewScreen extends StatelessWidget {
  CountryViewScreen(this.country, this.continent, {super.key});

  Country country;
  Continent continent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country: ${country.name}'),
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
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
              child: AspectRatio(
                aspectRatio: 3 / 2,
                child: country.imageUrl == null
                    ? const Text('No Image Available')
                    : Image.asset(
                        country.imageUrl!,
                        fit: BoxFit.fitWidth,
                      ),
              ),
            ),
            TabBar(
              labelColor: continent.color,
              indicatorColor: Colors.red,
              tabs: const [
                Tab(
                  text: 'General Information',
                  icon: Icon(Icons.info_rounded),
                ),
                Tab(
                  text: 'Geography',
                  icon: Icon(Icons.landscape),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      if (country.genInfo != null)
                        ...country.genInfo!
                            .map(
                              (item) => Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  child: Text(item),
                                ),
                              ),
                            )
                            .toList()
                      else
                        const Text('No General Information Available'),
                    ],
                  ),
                  ListView(
                    children: [
                      if (country.geography != null)
                        ...country.geography!
                            .map(
                              (item) => Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  child: Text(item),
                                ),
                              ),
                            )
                            .toList()
                      else
                        const Text('No Geography Available'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
