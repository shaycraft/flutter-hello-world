import 'package:flutter/material.dart';

class SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Results...')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [Center(child: Text(widget.mainText))],
          ),
        ));
  }
}

class SecondRoute extends StatefulWidget {
  final String mainText;

  // const SecondRoute({super.key, this.mainText});
  const SecondRoute(this.mainText, {super.key});

  @override
  State<StatefulWidget> createState() => SecondRouteState();
}
