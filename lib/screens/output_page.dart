import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

class OutputPage extends StatelessWidget {
  final String result;
  final String text;
  final String interpretation;

  OutputPage(
      {@required this.text,
      @required this.interpretation,
      @required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Results'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text.toUpperCase(),
                    style: kNormalTextStyle,
                  ),
                  Text(
                    result,
                    style: kNumberResultStyle,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        interpretation,
                        style: kResultTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FlatButton(
            padding: EdgeInsets.only(
              top: 15.0,
              bottom: 15.0,
            ),
            child: Center(
              child: Text(
                'Re-Calculate'.toUpperCase(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            color: Color(0xFFEB1555),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
