import 'package:etr_temp/models/continent.dart';
import 'package:etr_temp/models/country.dart';
import 'package:etr_temp/screens/country_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountryTile extends StatelessWidget {
  CountryTile(this.country, this.category, {super.key});

  Country country;
  Continent category;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => CountryViewScreen(country, category),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  country.imageUrl!,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              right: 4,
              bottom: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.black45,
                  child: Text(
                    country.name,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
