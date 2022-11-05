import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const double defaultFontSize = 36;
    const String greetingText = "Hey Miss Alijah!";

    const textWidget = Text(
      'Cook Faster I am hungreee!!! (ps butter sux)',
      style: TextStyle(fontSize: defaultFontSize),
    );

    const paddingWidget = Padding(
        padding: EdgeInsets.all(15.0), child: Center(child: textWidget));

    var columnWidget = Column(
      children: const [Center(child: paddingWidget)],
    );

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        home: Scaffold(
            appBar: AppBar(title: const Center(child: Text(greetingText))),
            body: Padding(
                padding: const EdgeInsets.all(15.0), child: columnWidget)));
  }
}
