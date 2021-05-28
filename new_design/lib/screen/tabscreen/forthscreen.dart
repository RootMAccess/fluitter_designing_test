import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ForthScreen extends StatelessWidget {
  String chooseDepartment = '';
  var _currentItemSelected = 'Admin';
  var _departments = [
    'Sales',
    'Purchase',
    'Manager',
    'Employeem',
    'Partner',
    'Account'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Column(
            children: [
              Text(
                'Assign New Task',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                makeInput(label: 'Title'),
                makeInput(label: 'Task'),
                makeInput(label: 'Priority'),
                makeInput(label: 'Start Date'),
                makeInput(label: 'End Date'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget makeInput({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.redAccent,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.redAccent,
            ),
          ),
        ),
      )
    ],
  );
}
