import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_design/screen/tabscreen/forthscreen.dart';
import 'package:new_design/screen/tabscreen/tabOne.dart';
import 'package:new_design/screen/tabscreen/tabTwo.dart';
import 'package:new_design/screen/tabscreen/thirdscreen.dart';

class SeconRoute extends StatefulWidget {
  @override
  _SeconRouteState createState() => _SeconRouteState();
}

class _SeconRouteState extends State<SeconRoute> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          elevation: 0,
          title: Text('MSFOOD'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Completed',
              ),
              Tab(
                text: 'On Progress',
              ),
              Tab(
                text: 'Tasks',
              ),
              Tab(
                text: 'New',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            FirstScreen(),
            SecondScreen(),
            ThirdScreen(),
            ForthScreen(),
          ],
        ),
      ),
    );
  }
}
