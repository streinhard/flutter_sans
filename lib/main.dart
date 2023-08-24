import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Sans Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TextPage(),
    );
  }
}

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Open­-Sans­-Text­-Page',
          style: TextStyle(
            fontFamily: 'OpenSansGoogle',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Open Sans is an open source humanist sans-serif typeface that was designed by Steve Matteson under '
            'commission from Google. It was released in 2011 and is based on his earlier design called Droid Sans, '
            'which was specifically created for Android mobile devices but with slight modifications to its width.'
            ''
            'The typeface is characterized by its wide apertures on many letters and a large x-height, making it '
            'highly legible on screens and at small sizes. Being part of the humanist genre of sans-serif typefaces, '
            'it also features a true italic style. As of July 2018, Open Sans is the second most widely used font on '
            'Google Fonts, serving over four billion views per day across more than 20 million websites.'
            ''
            'In March 2021, the Open Sans font family was updated to include a variable font version, which now also '
            'supports Hebrew characters.',
            style: TextStyle(
              fontFamily: 'OpenSansGoogle',
              fontSize: 20,
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
