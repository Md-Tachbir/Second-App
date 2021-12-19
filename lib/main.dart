import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Second App',
      home: Scaffold(body: MyApp2()),
    ),
  );
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  String txt = "";
  @override
  void initState() {
    txt = "Hello statefull widget";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(txt),
          RaisedButton(
            onPressed: () {
              setState(() {
                txt = "Messege changed";
              });
              print("onpressed $txt");
            },
            child: Text("change"),
          )
        ],
      )),
    );
  }
}
