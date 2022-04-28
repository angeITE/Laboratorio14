import 'informacion.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class Consumiendo extends StatefulWidget {
  const Consumiendo({ Key? key }) : super(key: key);

  @override
  State<Consumiendo> createState() => _ConsumiendoState();
}

class _ConsumiendoState extends State<Consumiendo> {
  late List _estudiantes = [];

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/estudiante.json');
    setState(() => _estudiantes = json.decode(jsonText));
    return 'ssdi';
  }

  @override
  //carga los datos del estudiante
  void initState(){
    super.initState();
    //carga el metodo
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: ListView.builder(itemCount: _estudiantes.length ,itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute<void>(builder:( BuildContext context) => Informacion(index, _estudiantes) ));
            },
            title: Text(_estudiantes[index]["nombre"]),
           leading: CircleAvatar(
             child: Text(_estudiantes[index]["nombre"].substring(0,1)),
           ),
          );
        }),
      )
      );
  }
}
