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

class CelebCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      color: Colors.pink[100],
      child: Column(
        children: [
          Image(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Conan_O%27Brien_by_Gage_Skidmore_2.jpg/1200px-Conan_O%27Brien_by_Gage_Skidmore_2.jpg'),
            height: 200.0,
            width: 200.0,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Conan O\'Brien',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            '"Longest running late night show host"',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
