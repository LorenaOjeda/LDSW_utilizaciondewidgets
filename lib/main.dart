import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // #docregion titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Nombre de la pelìcula',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Año',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('5'),
        ],
      ),
    );
    // #enddocregion titleSection

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
            'Lorem ipsum dolor sit amet. Et facere ipsa et quam expedita id  '
            'quaerat dolore et totam asperiores rem itaque explicabo ab  '
            'perspiciatis consectetur ad dolorum neque. Et officia omnis ut  '
            'dolorem illum qui eveniet odit ut eligendi eaque At culpa  '
            'accusantium est voluptatum ipsum aut itaque voluptates. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets'),
          backgroundColor: Colors.brown,
        ),
        body: ListView(
          children: [
            Image.asset(
                'lib/joker.jpg',
                width: 700,
                height: 440,
                ),
            titleSection,
            textSection,
          ],
        ),
      ),
    );
  }
}