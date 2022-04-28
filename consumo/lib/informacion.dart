import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Informacion extends StatelessWidget {
  int index;
  // ignore: prefer_final_fields
  List _estudiantes = [];
  Informacion(this.index, this._estudiantes, { Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListTile(
          title: Row(children: [ const Text("Matricula: "),Text(_estudiantes[index]["matricula"])]),
          subtitle: Column(
            children: [
              Container(color: Colors.green,height: 1, width: double.infinity,),
              Row(children: [const Text("Nombre: "),Text(_estudiantes[index]["nombre"]),]),
              Row(children: [const Text("Carrera: "),Text(_estudiantes[index]["carrera"]),]),
              Row(children: [const Text("Semestre: "),Text(_estudiantes[index]["semestre"]),]),
              Row(children: [const Text("Telefono: "),Text(_estudiantes[index]["telefono"]),]),
              Row(children: [const Text("Correo: "),Text(_estudiantes[index]["correo"]),]),
            ],
          ),
        ),
      )
    );
  }
}