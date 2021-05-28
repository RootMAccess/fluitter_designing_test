import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_design/screen/second_screen.dart';

import '../widget/task_caraousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIcon = 0;
  List<IconData> _icon = [
    FontAwesomeIcons.tasks,
    FontAwesomeIcons.bullhorn,
    FontAwesomeIcons.users,
    FontAwesomeIcons.calendarCheck,
    FontAwesomeIcons.moneyBillWave,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIcon = index;
        });
        print(_selectedIcon);
      },
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: _selectedIcon == index
              ? Theme.of(context).accentColor
              : Colors.redAccent,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 5,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Icon(
          _icon[index],
          size: 20,
          color: _selectedIcon == index
              ? Theme.of(context).primaryColor
              : Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white38,
        ),
        child: SafeArea(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedIcon = _selectedIcon;
              });
              print(_selectedIcon);
            },
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Welcome Admin...',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _icon
                      .asMap()
                      .entries
                      .map(
                        (MapEntry map) => _buildIcon(map.key),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TaskCaraousel(),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('taped');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeconRoute()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  blurRadius: 10,
                                  offset: Offset(0, 10),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 120,
                            width: 120,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.task,
                                  color: Colors.redAccent,
                                  size: 50,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Task',
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                blurRadius: 10,
                                offset: Offset(0, 10),
                              )
                            ],
                          ),
                          height: 120,
                          width: 120,
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.calculator,
                                color: Colors.redAccent,
                                size: 50,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Expenses',
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                blurRadius: 10,
                                offset: Offset(0, 10),
                              )
                            ],
                          ),
                          height: 120,
                          width: 120,
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.piggyBank,
                                color: Colors.redAccent,
                                size: 50,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Laon',
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.moneyBillWaveAlt,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Salary',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.signOutAlt,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Leave',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.calendarCheck,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Attendace',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.users,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'employee',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.handsHelping,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Partner',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Icon(
                              Icons.apartment_rounded,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Franchise',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        height: 120,
                        width: 140,
                        child: Column(
                          children: [
                            Icon(
                              Icons.announcement,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Announcement',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ],
                        ),
                        height: 120,
                        width: 140,
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.userTie,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Manager',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
