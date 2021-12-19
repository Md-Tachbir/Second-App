import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'First App',
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Hello statefull widget')),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton("Ok"),
        SizedBox(
          height: 10,
        ),
        CustomButton("Save"),
        SizedBox(
          height: 10,
        ),
        CustomButton("Click"),
        SizedBox(
          height: 10,
        ),
        CustomButton("No"),
      ],
    ));
  }
}

class CustomButton extends StatelessWidget {
  final String title;

  CustomButton(this.title);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('onTap');
      },
      child: Container(
        height: 40,
        width: 100,
        decoration:
            BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue),
        child: Center(child: Text(title)),
      ),
    );
  }
}
