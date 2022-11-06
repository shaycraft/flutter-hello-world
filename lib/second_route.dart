import 'package:flutter/material.dart';

const defaultTextStyle = TextStyle(fontSize: 36);

class SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Results...')),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  widget.mainText,
                  style: defaultTextStyle,
                ),
              ),
              const Text('So Suck on that')
            ],
          )),
    );
  }
}

class SecondRoute extends StatefulWidget {
  final String mainText;

  // const SecondRoute({super.key, this.mainText});
  const SecondRoute(this.mainText, {super.key});

  @override
  State<StatefulWidget> createState() => SecondRouteState();
}
