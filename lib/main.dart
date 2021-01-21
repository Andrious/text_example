import 'package:flutter/material.dart';

import 'package:textstyle_app/src/font_feature.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(),
//        home: FontFeature(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
          child: Text(
            'You have pushed the button this many times:',
            style: TextStyle(fontSize: 60,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = linearGradient),
          ),
        ));
    return Material(
        child: Center(
          child: Text(
            'You have pushed the button this many times:',
            style: TextStyle(fontSize: 60,
            fontWeight: FontWeight.bold,
            foreground: Paint()..shader = linearGradient),
          ),
        ));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(height: 12),
      ),
    ));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(wordSpacing: 12),
      ),
    ));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(letterSpacing: 2),
      ),
    ));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(fontSize: 42.5),
      ),
    ));
    return Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(color: Colors.black.withOpacity(0.6)),
      ),
    ));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(color: Colors.black12),
      ),
    ));
    return Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(
            fontFamily: DefaultTextStyle.of(context).style.fontFamily),
      ),
    ));
    return const Material(
        child: Center(
            child: Text(
      'You have pushed the button this many times:',
      style: TextStyle(
        fontFamily: 'Monospace',
        fontFamilyFallback: <String>[
          'Arial',
          'Courier',
          'Times',
        ],
      ),
    )));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(backgroundColor: Colors.blue),
      ),
    ));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
    ));
    return const Material(
        child: Center(
      child: Text(
        'You have pushed the button this many times:',
        style: TextStyle(
          fontSize: 20,
          decoration: TextDecoration.underline,
        ),
      ),
    ));
    return const Center(
      child: Text(
        'You have pushed the button this many times:',
      ),
    );
  }

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(const Rect.fromLTWH(0, 0, 200, 70));

  // @override
  // Widget build(BuildContext context) {
  //   // here, Scaffold.of(context) returns null
  //   return Scaffold(
  //     appBar: AppBar(title: Text('Demo')),
  //     body: Center(
  //       child: Builder(
  //         builder: (BuildContext context) => RaisedButton(
  //             child: Text('Show Snack Bar',
  //                 // Return the themeData from the map, _inheritedWidgets
  //                 style: Theme.of(context).textTheme.headline4),
  //             onPressed: () {
  //               // here, Scaffold.of(context) returns the locally created Scaffold
  //               Scaffold.of(context)
  //                   .showSnackBar(SnackBar(content: Text('Hello.')));
  //             }),
  //       ),
  //     ),
  //   );
  // }
}
