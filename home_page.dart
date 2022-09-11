import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

String url = 'https://lifeline-hack.herokuapp.com/api/';



//void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  
  
  
  @override
  void initState(){
    super.initState();
    
  }
  String titulo="Life-Line";
  
  GlobalKey<ScaffoldState> inicio = GlobalKey<ScaffoldState>(); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
      child: Scaffold(
        key: inicio,
        drawer: Drawer(
          
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                // ignore: unnecessary_const
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),color: Colors.blue,
                  ), child: const CircleAvatar(
                      backgroundColor: Colors.cyan,
                      radius: 7.0
                  ),
                  
                  ),

                    ListTile(
                    leading: const Icon(Icons.account_circle_outlined),
                    title:  Center(child: Text('nombre')),
                    onTap: (){
                      setState((){
                        
                      });
                    }
                    
                  ),
                  
                   ListTile(
                    leading: const Icon(Icons.punch_clock_rounded),
                    title:  Center(child: Text('edad')),
                    onTap: (){
                      setState((){
                        
                      });
                    }
                    
                  ),
                   ListTile(
                    leading: const Icon(Icons.manage_accounts),
                    title:  Center(child: Text('desc')),
                    onTap: (){
                      setState ((){
                        
                      });
                    },
                  )
    
            ],
          ),
          
        ),
        appBar: AppBar(
          
          title: Text(titulo),
        ),
        body: Center(
        )
          
      )
    ));
  }
}