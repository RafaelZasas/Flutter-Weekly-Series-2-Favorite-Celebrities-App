import 'package:favorite_celebrities_2/widgets/celeb_card.dart';
import 'package:flutter/material.dart';

// Now we can pass our celebrity information to each CelebCard
// Again, Dart simplifies this too!
// For example, this,
// CelebCard('Conan O\'Brien', 'Longest running late night show host', 'https://....png')
//
// Converts to, this,
// CelebCard(name: 'Conan O\'Brien', tagline: 'Longest running late night show host', imageUrl: 'https://....png')
//
// This is better as now we can shuffle the order of the parameters!
// We can also properly reformat it to get a beautiful hierarchy
// TODO (4): Pass the celebrity information to the each constructor of the CelebCard().

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raff\'s favorite celebrities!'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CelebCard(
              name: 'Leonardo Di Caprio',
              tagline: '"The Wolf Himself"',
              imageUrl:
                  'https://s30886.pcdn.co/wp-content/uploads/2019/09/10-17.jpg',
            ),
            CelebCard(
              name: 'Joe Burrow',
              tagline: '"Gaux Tigers"',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS3gqLeMVeMMV0mbY4siukN_NSLrHXbMWPydw&usqp=CAU',
            ),
            CelebCard(
              name: 'Cillian Murphy',
              tagline: 'AKA Tommy Shelby"',
              imageUrl:
                  'https://i2-prod.dailystar.co.uk/incoming/article19572901.ece/ALTERNATES/s615b/0_TommySmall.jpg',
            ),
            CelebCard(
              name: 'Samuel L Jackson',
              tagline: '"Say What Again"',
              imageUrl:
                  'https://www.syfy.com/sites/syfy/files/styles/1200x680_hero/public/wire/legacy/MaceWinduWallpaperV2.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
