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
      title: 'Open Sans App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const OpenSansPage(),
    );
  }
}

class OpenSansPage extends StatefulWidget {
  const OpenSansPage({super.key});

  @override
  State<OpenSansPage> createState() => _OpenSansPageState();
}

class _OpenSansPageState extends State<OpenSansPage> {
  bool useGithubFont = false;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontFamily: useGithubFont ? 'OpenSansGithub' : 'OpenSansGoogleFonts',
      fontSize: 24,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Open Sans Issue #2460',
          style: textStyle.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Use GitHub Font: ',
                style: textStyle,
              ),
              Switch(
                value: useGithubFont,
                onChanged: (value) {
                  setState(() {
                    useGithubFont = value;
                  });
                },
              ),
            ],
          ),
          Text('U+2010: ‐', style: textStyle),
          Text('U+002D: -', style: textStyle),
        ],
      ),
    );
  }
}
