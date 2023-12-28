import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'About Us',
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Welcome to GeoGlimpse, your passport to the world\'s continents and countries!',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'At GeoGlimpse, we\'re on a mission to bring the fascinating diversity of our planet right to your fingertips. Whether you\'re an avid traveler, a curious student, or simply someone who loves to explore the world from the comfort of your device, we\'ve got you covered.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Our Vision',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Our vision is to provide a comprehensive and engaging platform for discovering the wonders of each continent and the rich tapestry of nations they hold. We believe that understanding the world around us is the first step towards building a more connected and inclusive global community.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'What We Offer',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '- Continent Exploration: Dive into detailed information about the Earth\'s continents, from their geography and climate to their unique cultures and landmarks. Explore the breathtaking landscapes and diverse ecosystems that make each continent a world of its own.',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                '- Country Insights: Discover the countries within each continent, with in-depth profiles that include essential facts, cultural highlights, historical backgrounds, and much more. Whether you\'re planning a trip or simply expanding your knowledge, our country insights have you covered.',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                '- Educational Resources: GeoGlimpse is not just for travelers; it\'s a valuable educational resource. Students and educators can find a wealth of information to support geography and social studies curricula.',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                '- About Us: Learn more about the GeoGlimpse team and our dedication to making world knowledge accessible to all. Meet the people behind the scenes who are passionate about geography and cultural diversity.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Join Us on the Journey',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'GeoGlimpse is more than an app; it\'s a journey of discovery and connection. We invite you to embark on this adventure with us, whether you\'re exploring continents, researching countries, or simply satisfying your curiosity about the world we all share.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Thank you for choosing GeoGlimpse. Let\'s explore, learn, and connect with the world together!',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
