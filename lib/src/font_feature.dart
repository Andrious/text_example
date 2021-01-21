import 'dart:ui' as ui show FontFeature;

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class FontFeature extends StatelessWidget {
  FontFeature({Key key}) : super(key: key);
  final titleStyle = TextStyle(
    fontSize: 18,
    fontFeatures: const [ui.FontFeature.enable('smcp')],
    color: Colors.blueGrey[600],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(flex: 5),
            Text('regular numbers have their place:', style: titleStyle),
            Text(
              'The 1972 cup final was a 1-1 draw.',
              style: GoogleFonts.cardo(fontSize: 24),

              // style: TextStyle(
              //   fontFamily: 'Cardo',
              //   fontSize: 24,
              //   package: 'google_fonts',
              // ),
            ),
            const Spacer(),
            Text('but old-style figures blend well with lower case:',
                style: titleStyle),
            const Text('The 1972 cup final was a 1-1 draw.',
                style: TextStyle(
                  fontFamily: 'Cardo',
                  fontSize: 24,
                  fontFeatures: [ui.FontFeature.oldstyleFigures()],
                  package: 'google_fonts',
                )),
            const Spacer(),
            const Divider(),
            const Spacer(),
            Text('fractions look better with a custom ligature:',
                style: titleStyle),
            Text(
              'Add 1/2 tsp of flour and stir.',
              style: GoogleFonts.milonga(
                fontSize: 24,
                fontFeatures: [const ui.FontFeature.enable('frac')],
              ),
              // style: TextStyle(
              //     fontFamily: 'Milonga',
              //     fontSize: 24,
              //     fontFeatures: [ui.FontFeature.enable('frac')],
              //   package: 'google_fonts',
              // ),
            ),
            const Spacer(),
            const Divider(),
            const Spacer(),
            Text('multiple stylistic sets in one font:', style: titleStyle),
            const Text('Raleway Dots',
                style: TextStyle(fontFamily: 'Raleway Dots', fontSize: 48)),
            Text('Raleway Dots',
                style: TextStyle(
                  fontFeatures: [ui.FontFeature.stylisticSet(1)],
                  fontFamily: 'Raleway Dots',
                  fontSize: 48,
                  package: 'google_fonts',
                )),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
