import 'package:flutter/material.dart';
import 'package:flutter_app/favoritos.dart';
import 'package:flutter_app/perfil.dart';
import 'galeria.dart';
import 'inicio.dart';
class Home extends StatefulWidget{
 HomeState createState() => HomeState();
}

class HomeState extends State<Home>{
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos)
  {
      switch(pos){
        case 0: return Inicio();
        case 1: return Galeria();
        case 2: return Favoritos();
        case 3: return Perfil();
      }
  }


  _onSelecItem(int pos){
    setState(() {
      Navigator.of(context).pop();
      _selectDrawerItem = pos;
    });
    
  }

    @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('HelPet'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Alexander Vargas'),
               accountEmail: Text('alexander_9o@hotmail.com'),
               currentAccountPicture: CircleAvatar(
                 backgroundColor: Colors.blue,
                 child: Text(
                   'A',
                    style: TextStyle(fontSize: 40.0) ,
                    ),
               ),
               ),
            ListTile(
            title: Text('Menu Inicio'),
            leading: Icon(Icons.home),
            selected: (0 == _selectDrawerItem),
            onTap: (){
              _onSelecItem(0);
            },
          ),
          ListTile(
            title: Text('Galeria'),
            leading: Icon(Icons.photo_library),
            selected: (1 == _selectDrawerItem),
            onTap: (){
              _onSelecItem(1);
            },
          ),
          ListTile(
            title: Text('Favoritos'),
            leading: Icon(Icons.favorite),
            selected: (2 == _selectDrawerItem),
            onTap: (){
              _onSelecItem(2);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Perfil'),
            leading: Icon(Icons.account_circle),
            selected: (3 == _selectDrawerItem),
            onTap: (){
              _onSelecItem(3);
            },
          ),

          ListTile(
            title: Text('Salir'),
            leading: Icon(Icons.exit_to_app),
            selected: (4 == _selectDrawerItem),
            onTap: (){
              _onSelecItem(4);
            },
          )
          ] 
          
        ,),
      ),
    body: _getDrawerItemWidget(_selectDrawerItem),
    
    );

  }
}