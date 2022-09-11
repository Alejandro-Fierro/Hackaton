import 'package:flutter/material.dart';
import 'package:hackaton/Paginas/home_page.dart';

//void main() => runApp(PacientePage());

class PacientePage extends StatefulWidget {
  @override
  State<PacientePage> createState() => _PacientePageState();
}

GlobalKey<ScaffoldState> inicio = GlobalKey<ScaffoldState>();
class _PacientePageState extends State<PacientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: inicio,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                color: Theme.of(context).primaryColor ),),
                 ListTile(
                  leading: const Icon(Icons.map),
                  title: const Text("Mapa"),
                  onTap: (){
                    setState((){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  const HomePage()));
                      //picker = 0;
                    });
                  }
                  
                ),
                 ListTile(
                  leading: const Icon(Icons.account_box),
                  title: const Text("Paciente"),
                  onTap: (){
                    setState ((){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  PacientePage()));
                      //picker = 1;
                    });
                  },
                )

          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){},
          ),
          
        ],
        title: const Text("Datos del Paciente"),
      ),
     body:Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: const Text("Nombre",),
        ),
        
        
    );
  }
}