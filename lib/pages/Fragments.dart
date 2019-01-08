import 'package:flutter/material.dart';

  //Let's create a reusable method that can render GridView as long as it passed a
  //a BuildContext as well as list of strings
  Widget createGridView(BuildContext context,List<String> cosmicBodies) {

    //I will shuffle my data
    cosmicBodies.shuffle();

   // Then build my GridView and return it
    return new GridView.builder(
      itemCount: cosmicBodies.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return new GestureDetector(
          child: new Card(
            elevation: 5.0,
            child: new Container(
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(top: 10.0, bottom: 10.0,left: 10.0),
              child: new Text(cosmicBodies[index]),
            ),
          ),
    );
    }
    );
  }
//Create Meteors Fragment. This will contains a gridview with our meteors
class Meteors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var meteors = ["Tunguska","Crab Pulsar","Geminga","Calvera","Vela X-1","Gaspra",
    "Psyche","Pallas","Ceres","Pioneer","Haumea","Makemake","Eris"];
    
    return createGridView(context, meteors);
  }
}

//Create Moons Fragment. This will contains a gridview with our moons
class Moons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var moons =  ["Phobos","Deimos","Moon","Triton","Proteus","Oberon","Umbriel","Ariel","Titan",
    "Rhea","Lapetus","Dione","Enceladus","Mimas","Ganymede","Callisto","IO","Europa"];
    
    return createGridView(context, moons);
  }
}

//Create Stars Fragment. This will contains a gridview with our stars
class Stars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var stars = ["UY Scuti","VY Cani Majoris","VV Cephei","KY Cygni","Aldebaran","Canopus",
    "Sirius","Vega","Alpha Pegasi","Bellatrix","Pollux","Betelgeuse","Naos","Arcturus","Polaris",
      "Rigel","Deneb","Wezen","Antares","Eya Caninae"];
    
    return createGridView(context, stars);
  }
}

//Create Galaxies Fragment. This will contains a gridview with our galaxies
class Galaxies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var galaxies = ["Messier 87","Andromeda","Sombrero","Whirlpool","Pinwheel","Milky Way",
    "Cartwheel", "Black Eye Galaxy","Star Bust","Centaurus","Triangulum","Sunflower",
    "Caldwell","Tadpole","Hoag's Object","Mallin 1","NGC 262","IC 1101"];
    
    return createGridView(context, galaxies);
  }
}
