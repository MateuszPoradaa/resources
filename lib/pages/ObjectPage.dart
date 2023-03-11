import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  final size = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widok obiektu'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: (() => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                        'Znajdujesz się w widoku obiektu. \nBędą tu wyświetlone informacje o wybranym obiekcie.'),
                  ),
                )),
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: SafeArea(
              child: Container(
                color: Colors.brown.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: size,
                      height: size,
                      color: Colors.blueGrey,
                      // ignore: prefer_const_constructors
                      child:
                          Text('Zdjęcie obiektu', textAlign: TextAlign.center),
                    ),
                    const Text(
                      'Opis obiektu',
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(
                      onPressed: () => ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(
                              content: Text('Otwieranie map...'))),
                      child: const Text("Nawiguj"),
                    ),
                    ElevatedButton.icon(
                      onPressed: () => ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(
                              content: Text("Dodano do ulubionych"))),
                      icon: Icon(Icons.favorite),
                      label: Text('Like'),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
