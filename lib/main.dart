import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //
  MyApp({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Flutter Demo',
    home: MyHomePage(),
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // here, Scaffold.of(context) returns null
    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: Center(
        child: Builder(
          builder: (BuildContext context) => RaisedButton(
              child: Text('Show Snack Bar',
                  style: Theme.of(context).textTheme.headline4),
              onPressed: () {
                // here, Scaffold.of(context) returns the locally created Scaffold
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('Hello.')));
              }),
        ),
      ),
    );
  }

// Widget build(BuildContext context) => Material(
//          child: Center(
//         child: Text(
//           'You have pushed the button this many times:',
//           style: Theme.of(context).textTheme.headline4,
//         ),
//       )
//     );
}

const TextStyle _errorTextStyle = TextStyle(
  color: Color(0xD0FF0000),
  fontFamily: 'monospace',
  fontSize: 48.0,
  fontWeight: FontWeight.w900,
  decoration: TextDecoration.underline,
  decorationColor: Color(0xFFFFFF00),
  decorationStyle: TextDecorationStyle.double,
  debugLabel: 'fallback style; consider putting your text in a Material',
);
