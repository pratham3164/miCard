import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.teal),
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/pm.png'),
              radius: MediaQuery.of(context).size.width * 0.20,
            ),
            Text(
              'Pratham Malji',
              textScaleFactor: 2,
              style: TextStyle(fontFamily: 'Pacifico', color: Colors.white),
            ),
            Text('Developer',
                textScaleFactor: 1.1,
                style: TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.bold)),
            Cards(
              iconData: Icons.call,
              text: '+91 4545454545',
            ),
            Cards(
              iconData: Icons.mail,
              text: 'pmalji5034@gmail.com',
            )
          ],
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final text;
  final iconData;
  Cards({@required this.text, @required this.iconData});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: ListTile(
        leading: Icon(iconData, color: Colors.teal),
        title: Text(
          text,
          style: TextStyle(color: Colors.teal),
        ),
      ),
    );
  }
}
