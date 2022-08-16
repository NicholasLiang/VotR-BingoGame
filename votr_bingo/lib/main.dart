import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    double boxSize = 700;

    if (size.height - kToolbarHeight - 24 < boxSize) {
      boxSize = size.height - kToolbarHeight - 24;
    }

    if (size.width < boxSize)
    {
      boxSize = size.width;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center( child: Text('Valley of the Rougorous') ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            Container(
              color: Colors.blue[600],
              width: boxSize,
              height: boxSize,
              child: Bingo(),
            ),
          ],
        )
      )
    );
  }
}

class Bingo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    // /*24 is for notification bar on Android*/
    // const double itemHeight = 200; // fixed height
    // final double itemWidth = size.width / 2;

    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 3,
      // childAspectRatio: (itemWidth / itemHeight),
      // Generate 100 widgets that display their index in the List.
      children: List.generate(9, (index) {
        return Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headline5,
          ),
        );
      }),
    );
  }
}