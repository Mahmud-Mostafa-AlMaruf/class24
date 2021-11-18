import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body:
      Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.red,
              child: Text('${MediaQuery.of(context).size.height * 1}'),
            ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: MediaQuery.of(context).size.width * .2,
                color: Colors.yellow,
                child: Text('${MediaQuery.of(context).size.height * 1}'),
              ),
            ),
          ],
        ),
      )
    );
  }
}



