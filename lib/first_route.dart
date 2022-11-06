import 'package:flutter/material.dart';
import 'package:flutter_hello_world/second_route.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  final defaultButtonStyles = const ButtonStyle(
      minimumSize: MaterialStatePropertyAll<Size>(Size(124.0, 82.0)),
      maximumSize: MaterialStatePropertyAll<Size>(Size(224.0, 182.0)),
      padding:
          MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(22.0)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Hello Alijah'))),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Butter sux?', textScaleFactor: 3.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: defaultButtonStyles,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SecondRoute('Correct!')));
                      },
                      child: const Text('Yes?'),
                    ),
                    ElevatedButton(
                        style: defaultButtonStyles,
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SecondRoute('WRONG!!!!!!')))
                            },
                        child: const Text('No'))
                  ],
                )
              ],
            )));
  }
}
