import 'package:flutter/material.dart';

void main() => runApp(danaApp());

class danaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: EsScaffold(title: "Flutter Feny (Gerson)"),
    ); //Fin de Material
  } //Fin Widget
} //Fin runApp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} //Fin Clase EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/flut.png',
          width: 200.0,
        ),
      ), //Fin Center
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 200.0), //fin flutter logo
          Text('Cajon Izquierdo'),
        ] //fin de children
            ), //fin de el chil de drawer1
      ), //fin de el drawer1
      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 200.0), //fin flutter logo
          Text('Cajon Derecho'),
        ] //fin de children
            ), //fin de el chil del enddrawer2
      ), //fin del endrawer
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_tree_sharp),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(size: 100.0), //fin flutter logo
                    Text('Boton de la Hoja 1'),
                  ], //fin de el children
                ), //child column
              ); //fin de el contenedor(cuadro que sale)
            }, //fin del builder
          ); //fin de showmodal
        }, //fin de on pressed
      ), //finfloatingactionbutton
      bottomNavigationBar: BottomAppBar(
        color: Colors.redAccent[400],
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ),
              Text('Barra de navegacion Flotante')
            ],
          ),
        ),
      ), //fin del navigationbar
    ); //Fin de Scaffold
  } //Fin del Widget Construir
} //Fin de de State <EsScaffold>
