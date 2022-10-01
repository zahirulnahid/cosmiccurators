import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class psp extends StatefulWidget {
  const psp({super.key});

  @override
  State<psp> createState() => _pspState();
}

class _pspState extends State<psp> {
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
      backgroundColor: Color.fromRGBO(2, 17, 38, 1),
      appBar: AppBar(
          centerTitle: true,
          title: Text("Cosmic Curators"),
          elevation: 0,
          backgroundColor: Color.fromRGBO(2, 17, 38, 1)),
      //
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                "https://scitechdaily.com/images/Parker-Solar-Probe-Touches-Sun.gif",
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
            ),
            Card(
              child: ListTile(
                title: Text("SpeedOfSpacecraft"),
                subtitle: Text(pspdata["speedOfSpacecraft"]),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Distance From Sun Surface"),
                subtitle: Text(pspdata["distanceFromSunSurface"]),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Fastest Speed"),
                subtitle: Text(pspdata["fastestSpeed"]),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Closest Approach"),
                subtitle: Text(pspdata["closestApproach"]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
