import 'package:flutter/material.dart';
import 'package:fise/surveys/survey_1.dart';
import 'package:fise/surveys/survey_2.dart';
import 'package:fise/surveys/survey_3.dart';
import 'package:fise/surveys/survey_4.dart';
import 'package:fise/surveys/survey_5.dart';
import 'thank_you.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final List<int> surveyScoreCard = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fise',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: FiseHomePage(title: 'Fise Survey'),
        routes: <String, WidgetBuilder>{
          '/income': (BuildContext context) => new IncomeSurvey(),
          '/household_income': (BuildContext context) => new HouseholdSurvey(),
          '/savings': (BuildContext context) => new SavingsSurvey(),
          '/spending':(BuildContext context) => new SpendingSurvey(),
          '/finance_knowledge': (BuildContext context) =>
              new FinanceKnowledgeSurvey(),
          '/thank_you': (BuildContext context) => new ThankYouPage(),
        });
  }
}

class FiseHomePage extends StatefulWidget {
  FiseHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FiseHomePageState createState() => _FiseHomePageState();
}

class _FiseHomePageState extends State<FiseHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          child: Card(
            margin: EdgeInsets.all(25.0),
            shape: BeveledRectangleBorder(),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Fise Survey',
                        style: TextStyle(
                          fontSize: 19,
                        )),
                    subtitle: Text(
                        'Welcome to Fise Survey ,please spare 5-6 min of your time to answer some few questions',
                        style: TextStyle(
                          height: 2.5,
                          fontSize: 16,
                        )),
                  ),
                  ButtonTheme.bar(
                    // make buttons use the appropriate styles for cards
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text(
                            'OK',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/income');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ));
  }
}
