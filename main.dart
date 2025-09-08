import 'package:flutter/material.dart';

/* Import the material design library, it provide widgets

the material.dart is FLUTTER SDK and implements in google material design guidelines for UI
* */

void main() {
  runApp(const myApp()); // flutter app function initialize the app that attached on the root widget (main screen) to the screen.
}

class myApp extends StatelessWidget {
  const myApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Studio Ghibli',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );

  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Studio Ghibli'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Ghibli.jpg',
              width: 500,
              height: 500,
            ),
            const Text(
              'Howls Moving Castle',
              style: TextStyle(fontSize: 25, color: Colors.pink),
            ),

            const Text(
              'The story follows Sophie Hatter, a young milliner who is transformed into an elderly woman by the Witch of the Waste. In her quest to break the curse, '
                  'Sophie encounters the enigmatic wizard Howl and his magical moving castle. Alongside Calcifer, a fire demon who powers the castle, '
                  'and Markl, Howl's apprentice, Sophie embarks on a journey filled with adventure and self-discovery. The film intertwines elements of fantasy with the harsh realities of war'
                  'as Sophie learns about love, courage, and the importance of inner beauty.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );

  }
}
