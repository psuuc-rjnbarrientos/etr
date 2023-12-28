import 'package:etr_temp/models/continent.dart';
import 'package:etr_temp/screens/country_list.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContinentTile extends StatelessWidget {
  ContinentTile({super.key, required this.continent});

  Continent continent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CountryListScreen(
              continent: continent,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  continent.img!,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Center(
            child: Text(
              continent.name,
              style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
