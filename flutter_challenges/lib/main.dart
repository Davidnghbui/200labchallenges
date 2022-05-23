import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(children: [
          Row(children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(color: Colors.grey)),
                                  Expanded(
                                      flex: 1,
                                      child: Container(color: Colors.orange)),
                                  Expanded(
                                      flex: 1,
                                      child: Container(color: Colors.blue)),
                                  Expanded(
                                      flex: 1,
                                      child: Container(color: Colors.pink)),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Container(
                                          color: const Color.fromARGB(
                                              255, 106, 177, 235))),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child:
                                                Container(color: Colors.green)),
                                        Expanded(
                                            child:
                                                Container(color: Colors.yellow))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.black,
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.yellow,
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.white,
                        ))
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.pink,
                )),
            Container(
              width: 10,
              color: Colors.white,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink,
                )),
          ]),
          Positioned(
            bottom: constraints.maxHeight / 3,
            left: constraints.maxWidth / 6,
            child: Container(
                width: constraints.maxWidth / 4,
                height: constraints.maxHeight / 6,
                color: const Color.fromARGB(112, 24, 24, 24)),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
