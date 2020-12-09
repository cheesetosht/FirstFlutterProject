import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget numberBtn(String val) {
    return Expanded(
        child: FlatButton(
      onPressed: () {},
      child: Text(
        '$val',
        style: TextStyle(fontSize: 25.0),
      ),
      padding: EdgeInsets.all(25.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(width: 2.0, color: Colors.grey)),
    ));
  }

  Widget signBtn(String val) {
    return Expanded(
        child: FlatButton(
      onPressed: () {},
      child: Text(
        '$val',
        style: TextStyle(fontSize: 25.0),
      ),
      padding: EdgeInsets.all(25.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(width: 2.0, color: Colors.teal)),
    ));
  }

  Widget eqlBtn(String val) {
    return Expanded(
        child: RaisedButton(
            onPressed: () {},
            child: Text(
              '$val',
              style: TextStyle(fontSize: 25.0),
            ),
            padding: EdgeInsets.all(25.0),
            color: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
                child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Output',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600),
              ),
            )),
            Row(children: <Widget>[
              numberBtn('7'),
              numberBtn('8'),
              numberBtn('9'),
              signBtn('+'),
            ]),
            Row(children: <Widget>[
              numberBtn('4'),
              numberBtn('5'),
              numberBtn('6'),
              signBtn('-'),
            ]),
            Row(children: <Widget>[
              numberBtn('1'),
              numberBtn('2'),
              numberBtn('3'),
              eqlBtn('+'),
            ]),
          ],
        ),
      ),
    );
  }
}
