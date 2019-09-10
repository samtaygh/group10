import 'package:flutter/material.dart';
import 'package:weigh_care/drawer.dart';
// import 'package:weigh_care/page1.dart';


class HomePage extends StatelessWidget {
  Widget _buildGridContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible( child: Image.asset('assets/fitness.png')),
        Text('Bla bla bla'),
      ],
    );
  }

  Widget _buildBody() {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5.0,
      children: <Widget>[
        _buildGridContent(),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.teal,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weigh Care App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('WEIGH CARE'),
          centerTitle: true,
        ),
        // body: Text('qwert'),
        drawer: MyAppDrawer(),
        body: _buildBody(),
      ),
    );
  }
}
