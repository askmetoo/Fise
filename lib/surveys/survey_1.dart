import 'package:flutter/material.dart';
import '../main.dart';

class HouseholdSurvey extends StatefulWidget {
  @override
  _HouseholdSurveyState createState() => _HouseholdSurveyState();
}

class _HouseholdSurveyState extends State<HouseholdSurvey> {
  // state variable
  int _radiovalue = -1;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radiovalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Household'),
        ),
        body: Center(
          child: Card(
              shape: BeveledRectangleBorder(),
              child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(children: <Widget>[
                    new Text('Select one of the following:',
                        style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    new Container(
                        child: new Text(
                      'Your Household Income Bracket is between :',
                      style: new TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    )),
                    new Radio(
                      value: 0,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    new Text(
                      '0 - 30,000',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(
                      value: 1,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    new Text(
                      '30,001 - 80,000',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(
                      value: 2,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    new Text(
                      '80,001 - 150,000',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(
                      value: 3,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    new Text(
                      '150,001 - 300,000',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Radio(
                      value: 3,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    new Text(
                      '300,001 and above',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          elevation: 4.0,
                          splashColor: Colors.lightGreen,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/savings');
                          },
                          child: Text('Next'),
                        ))
                  ]))),
        ));
  }
}
