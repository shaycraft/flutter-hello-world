import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _bannerText = 'Butter sux?';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        home: Scaffold(
            appBar: AppBar(title: const Center(child: Text('Hello Alijah'))),
            body: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(_bannerText),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _bannerText = 'Correct!';
                            });
                          },
                          child: const Text('Yes?'),
                        ),
                        ElevatedButton(
                            onPressed: () => setState(() {
                                  _bannerText = 'WRONG!!!!!';
                                }),
                            child: const Text('No'))
                      ],
                    )
                  ],
                ))));
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class _BannerTextState extends State<MyApp> {
//   String _statusMessage = 'Butter sux?';
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(_statusMessage);
//   }
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   String statusMessage;
//
//   void updateWithYes() {
//
//   }
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     const double defaultFontSize = 36;
//     const String greetingText = "Hey Miss Alijah!";
//
//     const textWidget = Text(
//       'Cook Faster I am hungreee!!! (ps butter suxzzz)',
//       style: TextStyle(fontSize: defaultFontSize),
//     );
//
//     const paddingWidget = Padding(
//         padding: EdgeInsets.all(15.0), child: Center(child: textWidget));
//
//     var columnWidget = Column(
//       children: const [Center(child: paddingWidget)],
//     );
//
//     String statusMessage = "Butter Suxzzzz?";
//
//     const statusLabel = Text('Butter sux?');
//
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.lime,
//         ),
//         home: Scaffold(
//             appBar: AppBar(title: const Center(child: Text('Hello Alijah'))),
//             body: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   children: [
//                     Text(statusMessage),
//                     Row(
//                       children: [
//                         ElevatedButton(
//                           child: const Text('Yes'),
//                           onPressed: () => statusLabel. = 'Correct',
//                         ),
//                         ElevatedButton(
//                           child: const Text('No'),
//                           onPressed: () => {},
//                         )
//                       ],
//                     )
//                   ],
//                 ))));
//   }
//
//   @override
//   State<StatefulWidget> createState() {
//     statusMessage = 'Butter sux?';
//   }
// }
