import 'package:flutter/material.dart';

void main() {
  runApp(const MyContador());
}

class MyContador extends StatefulWidget {
  const MyContador({super.key});

  @override
  State<MyContador> createState() => _MyContadorState();
}

class _MyContadorState extends State<MyContador> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contador básico")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$contador", style: TextStyle(fontSize: 50)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        contador++;
                      });
                    },
                  ),
                  SizedBox(width: 16),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (contador > 0) {
                          contador--;
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
