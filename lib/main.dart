import 'package:dialog_app/dialog.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Dialog Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showDialog() {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => CustomDialog(
        headerIcon: Icon(Icons.info_outline, color: Colors.red, size: 44,),
        description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris scelerisque eget dolor vitae rhoncus.",
        closeIcon: Icon(Icons.close, color: Colors.grey, size: 22,),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        tooltip: 'Dialog',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
