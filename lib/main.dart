import 'package:flutter/material.dart';
import 'myDrawer.dart';

void main() => runApp(MyApp(
));
class MyApp extends StatefulWidget {
@override
_MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
@override
Widget build(BuildContext context) {
 return new MaterialApp(
 title: "Venus Movie App",
 debugShowCheckedModeBanner: false,
 home: new HomePage(),
 );
 }
}
class HomePage extends StatefulWidget {
@override
_HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
@override
Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: Colors.white,
 drawer: new MyDrawer(),
 appBar: new AppBar(
 backgroundColor: Colors.amberAccent,
 ),
 body: new Container(
 decoration: new BoxDecoration(
 image: new DecorationImage(
 image: new AssetImage("assets/venus-playlist.png"), fit: BoxFit.fitWidth),
 ),
 ),
 );
 }
}
