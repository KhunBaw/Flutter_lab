import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() {
  runApp(SuperHeros());
}

class SuperHeros extends StatelessWidget {
  @override
  final List<String> _heroImages = [
    "images/Flash.png",
    "images/spydy.png",
    "images/cat.jpg",
    "images/wonderwoman.png",
  ];

  final List<String> _heroNames = [
    "The Flash",
    "Spyderman",
    "The Cat",
    "Wonder Woman",
  ];

  final List<String> _heroDetails = [
    "The Flash is an American superhero television series developed by Greg Berlanti, Andrew Kreisberg, and Geoff Johns, airing on The CW. It is based on the Barry Allen incarnation of DC Comics character the Flash, a costumed superhero crime-fighter with the power to move at superhuman speeds.",
    "Superhuman strength, agility, endurance, ability to stick to and climb walls and other surfaces, uses self-designed web-shooters allowing him to fire and swing from sticky webs, special 'Spider-Sense' warns of incoming danger, genius intellect specializing in chemistry and invention.",
    "Thor is a hammer-wielding god associated with lightning, thunder, storms, sacred groves and trees, strength, the protection of mankind and also hallowing and fertility.",
    "Wonder Woman is the princess Diana, the daughter of Hippolyta, Queen of the Amazons and Zeus, the mightiest of the Gods of Olympus. Diana volunteered to leave behind her home of Themyscira and champion the Amazons' message of peace, fighting for justice and equality in Man's World. She is a founding member of the Justice League.",
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Color(0xFF222831),
          ),
          cardTheme: CardTheme()),
      home: Scaffold(
        appBar: AppBar(
          title: Text('SuperHeros'),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    width: double.infinity,
                    color: Color(0xFF393e46),
                    child: Center(
                      child: Text(
                        "Super Heros",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  for (var i = 0; i < 4; i++)
                    Hero(this._heroNames[i], this._heroImages[i],
                        this._heroDetails[i]),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}

class Hero extends StatelessWidget {
  String _heroName;
  String _heroImage;
  String _heroDetail;

  Hero(this._heroName, this._heroImage, this._heroDetail, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Image.asset(this._heroImage),
            ),
            ListTile(
              leading: Icon(Icons.flash_on),
              title: Text(this._heroName),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 16),
              child: Text(
                this._heroDetail,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
