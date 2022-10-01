import 'package:cosmic_curators/screens/aframe.dart';
import 'package:cosmic_curators/screens/arview.dart';
import 'package:cosmic_curators/screens/parkersolarprobe.dart';
import 'package:cosmic_curators/screens/pspgame.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var pspdata;

  Future<void> getData() async {
    var response =
        await http.get(Uri.parse('https://api.amartable.com/nasa/psp.php'));
    setState(() {
      var decode = json.decode(response.body);
      pspdata = decode;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    this.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(2, 17, 38, 1),
      appBar: AppBar(
          centerTitle: true,
          title: Text("Cosmic Curators"),
          elevation: 0,
          backgroundColor: Color.fromRGBO(2, 17, 38, 1)),
      //
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  "https://www.nasa.gov/sites/default/files/styles/ubernode_alt_horiz/public/thumbnails/image/01_cover_forstory.png",
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0,
              ),
              Card(
                child: ListTile(
                  tileColor: Color.fromRGBO(70, 73, 79, .90),
                  leading: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Parker_Solar_Probe_insignia.png/150px-Parker_Solar_Probe_insignia.png"),
                  title: Text("Speed Of Spacecraft",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 200, 45, 1),
                          fontSize: 22)),
                  subtitle: Text(
                      pspdata["speedOfSpacecraft"] + "\nFor more click",
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => psp()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: Color.fromRGBO(70, 73, 79, .9),
                  leading: Image.network(
                      "https://www.nasa.gov/sites/default/files/styles/image_card_4x3_ratio/public/thumbnails/image/9744_steve_neowise_aurora_meteor_donna_lach-sm.jpg"),
                  title: Text(
                    "Do You Know?",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  subtitle: Text(
                    "When the electrons reach Earth's thin upper atmosphere, they collide with nitrogen and oxygen molecules, sending them into an excited state. The excited electrons eventually calm down and release light, which is what we see as the aurora",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: Color.fromRGBO(70, 73, 79, .90),
                  leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR11ZsfxWTAqse3-XUuUdQSeVgQQb1y8ByL3g&usqp=CAU")),
                  title: Text("3D AR Parker Solar Probe",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 200, 45, 1),
                          fontSize: 18)),
                  subtitle: Text(
                      "Explore and get the most realistic view of Parker Solar Probe",
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => arview()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: Color.fromRGBO(70, 73, 79, .90),
                  leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://ichef.bbci.co.uk/news/640/cpsprodpb/A064/production/_104206014_observingsunposter-jhu-apl.jpg")),
                  title: Text("Speed Up Parker Solar Probe",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 200, 45, 1),
                          fontSize: 18)),
                  subtitle: Text(
                      "Crank Up the Speed on Your PSP By Playing This Game",
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pspgame(
                                  receiveData: int.parse(
                                      pspdata["speedOfSpacecraft"]
                                          .toString()
                                          .replaceAll('kph', '')
                                          .replaceAll(',', '')),
                                )));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: Color.fromRGBO(70, 73, 79, .90),
                  leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://www.nasa.gov/sites/default/files/hso-fleet.jpg")),
                  title: Text("Heliophysics",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 200, 45, 1),
                          fontSize: 22)),
                  subtitle: Text("View the expanded solar atmosphere using AR",
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => arframe(
                                  receiveData:
                                      "https://api.amartable.com/ar/Heliophysics.php",
                                )));
                  }, //https://www.nasa.gov/sites/default/files/hso-fleet.jpg
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: Color.fromRGBO(70, 73, 79, .90),
                  leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://i.ibb.co/hLVYP7Q/roundball.png")),
                  title: Text("Fly with Solar Wind Speed",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 200, 45, 1),
                          fontSize: 22)),
                  subtitle: Text("Throw a ball at the speed of the solar wind.",
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => arframe(
                                  receiveData:
                                      "https://api.amartable.com/ar/solarwindspeed.php",
                                )));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: Color.fromRGBO(70, 73, 79, .90),
                  leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://i.ibb.co/9smv4vZ/solarcake.jpg")),
                  title: Text("Sun Multiflavore Cake",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 200, 45, 1),
                          fontSize: 22)),
                  subtitle: Text("Discover the Unique Flavors of Solar Images",
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => arframe(
                                  receiveData:
                                      "https://api.amartable.com/ar/solarcake.php",
                                )));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: Color.fromRGBO(70, 73, 79, .90),
                  leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          NetworkImage("https://i.ibb.co/9bvhwWn/SW.jpg")),
                  title: Text("Solar Weather Forecast",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 200, 45, 1),
                          fontSize: 22)),
                  subtitle: Text("3 Day Forecast",
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => arframe(
                                  receiveData:
                                      "https://services.swpc.noaa.gov/text/3-day-forecast.txt",
                                )));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  tileColor: Color.fromRGBO(70, 73, 79, .90),
                  leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://images.spaceappschallenge.org/stream-images/sHuE4beSkZs9DrL4i31ctZDjJb0=/11008/width-800/")),
                  title: Text("About Us",
                      style: TextStyle(
                          color: Color.fromRGBO(217, 200, 45, 1),
                          fontSize: 22)),
                  subtitle: Text("Click here to visit our site",
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => arframe(
                                  receiveData:
                                      "https://cosmiccurators.web.app/",
                                )));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
