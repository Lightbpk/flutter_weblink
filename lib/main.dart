import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: [
          new Text('text from MyBody class'),
          new FlatButton(
            onPressed: () async{
              const url = 'http://jopa.com';
              if (await canLaunch(url)){
                await launch(url);
              }else{
                throw 'could not launch url';
              }
            },
            child: Text('Open Url'),
            color: Colors.red,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
        appBar: new AppBar(title: new Text('appbar title text')),
        body: new MyBody()),
  ));
}