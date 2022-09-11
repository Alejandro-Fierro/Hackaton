import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class paciente{
  final String nombre;
  final String apellido;
  final int edad;
  final String enfermedad;

  paciente({
    required this.nombre, 
    required this.apellido, 
    required this.edad, 
    required this.enfermedad
    });

    factory paciente.fromJson(Map<String,dynamic> json){
      return paciente(
        nombre: json['name'], 
        apellido: json['lastName'], 
        edad: json['age'], 
        enfermedad: json['disease']);
    }
}

Future<List<paciente>> fetchPost() async{
  http.Response response = await http.get(Uri.parse('https://lifeline-hack.herokuapp.com/api/'));
  if(response.statusCode == 200){
    var jsonList = json.decode(response.body) as List;
    return jsonList.map((element)=> paciente.fromJson(element)).toList(); 
  } 
  else{
    throw Exception('Didnt report');
  }
}