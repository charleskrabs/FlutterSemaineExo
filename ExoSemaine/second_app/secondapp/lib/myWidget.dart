import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/equipment.dart';

class InfoXefi extends StatelessWidget {
  const InfoXefi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Xefi Lyon',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, height: 3),
                ),
                Text('2507 Avenue de l Europe,'),
                Text('69140 Rilleux-la-pape,'),
                Text('\n0472837575'),
                Text('\nxefi@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                      '\never  since the 1500s ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen b'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Equipement extends StatelessWidget {
  final Color color;
  final double width, height;
  final String nom;
  final String numeroSerie;
  const Equipement(
      {Key? key,
      required this.nom,
      required this.numeroSerie,
      required this.color,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nom,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text('\nn° de serie : $numeroSerie',
                      style: TextStyle(color: Colors.grey)),
                  const Text('\nInfos et historique >',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstAPP',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(
        liste: [
          Equipementliste(name: 'equipement 1', numserie: '25'),
          Equipementliste(name: 'equipement 2', numserie: '26'),
          Equipementliste(name: 'equipement 3', numserie: '27'),
          Equipementliste(name: 'equipement 4', numserie: '28'),
          Equipementliste(name: 'equipement 5', numserie: '29'),
          Equipementliste(name: 'equipement 6', numserie: '30'),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Equipementliste> liste;
  const HomePage({Key? key, required this.liste}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final String _val = liste.length.toString();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const InfoXefi(),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '\n\nEquipement($_val)\n',
              style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: _size.width,
            height: _size.height * 0.61,
            child: ListView(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              children: List.generate(
                liste.length,
                (index) => Equipement(
                    nom: liste[index].name,
                    numeroSerie: liste[index].numserie,
                    color: Colors.white,
                    width: 300,
                    height: 100),
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
