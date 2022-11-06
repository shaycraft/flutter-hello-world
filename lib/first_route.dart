import 'package:flutter/material.dart';
import 'package:flutter_hello_world/second_route.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Hello Alijah'))),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Text('Butter sux?'),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondRoute()));
                      },
                      child: const Text('Yes?'),
                    ),
                    ElevatedButton(
                        onPressed: () => {
                              // _currentForm = resultForm;
                            },
                        child: const Text('No'))
                  ],
                )
              ],
            )));
  }
}
