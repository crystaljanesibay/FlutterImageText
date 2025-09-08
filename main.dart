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
        primarySwatch: Colors.purple,
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
              width: 300,
              height: 300,
            ),
            
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Howl’s Moving Castle',
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.blue,
                  ),
                  
              ),
            ),

            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric (horizontal: 16),
              child: const Text(
                'Howl’s Moving Castle (2004) is a Studio Ghibli fantasy film directed by Hayao Miyazaki. It tells the story of Sophie, a young woman cursed by the Witch of the Waste to become an old woman. ' 
                'Seeking a cure, she enters the magical moving castle of the wizard Howl, where she meets his fire demon Calcifer and apprentice Markl. As Sophie and Howl grow closer,'
                'she helps him face his own struggles while also discovering her inner strength. The movie beautifully blends themes of love, courage, and the futility of war with stunning animation and music.',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.2,
                  ), 
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );

  }
}
