import 'package:flutter/material.dart';
import 'controles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gatito game'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/resources/gatitoch.png'),
            fit: BoxFit.cover, // todo el contenedor
          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Controles()),
              );
            },
            child: Text('Jugar'),
          ),
        ),
      ),
    );
  }
}
