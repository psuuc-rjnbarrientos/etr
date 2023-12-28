import 'package:flutter/material.dart';
import 'package:etr_temp/screens/continent_list.dart';

class TitleScreen extends StatefulWidget {
  const TitleScreen({super.key});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {
  @override
  void initState() {
    super.initState();
    goToHomeScreen();
  }

  goToHomeScreen() async {
    await Future.delayed(
      const Duration(
        seconds: 4,
      ),
    );
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ContinentListScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ContinentListScreen()));
      },
      child: Stack(
        children: [
          Container(
            color: Colors.white70,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Add your logo image here
                  Image.asset(
                    'assets/images/logo.png', // Replace with the path to your logo image
                    width: 400, // Adjust the size as needed
                    height: 400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
