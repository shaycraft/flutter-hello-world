import 'package:flutter/material.dart';
import 'package:flutter_hello_world/first_route.dart';

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

class ResultRoute extends StatelessWidget {
  const ResultRoute({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('whadup'))),
      body: const Text('WRONG!!!!!!'),
    );
  }
}

class _MyAppState extends State<MyApp> {
  String _bannerText = 'Butter sux???';
  bool _userAnswer = false;

  @override
  Widget build(BuildContext context) {
    final resultForm = Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
            child: Column(
                children: [Text(_userAnswer == false ? 'WRONG' : 'TRUE')])));

    final Padding questionForm = Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(_bannerText),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // setState(() {
                    //   // _bannerText = 'Correct!';
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const ResultRoute()));
                    // });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResultRoute()));
                  },
                  child: const Text('Yes?'),
                ),
                ElevatedButton(
                    onPressed: () => setState(() {
                          _bannerText = 'WRONG!!!!!';
                          // _currentForm = resultForm;
                        }),
                    child: const Text('No'))
              ],
            )
          ],
        ));

    var firstRoute = Scaffold(
        appBar: AppBar(title: const Center(child: Text('Hello Alijah'))),
        body: questionForm);

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        home: const FirstRoute());
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
