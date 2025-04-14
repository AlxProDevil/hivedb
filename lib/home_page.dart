import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Box Reference
  final _newBox = Hive.box('newBox');

  // Write data method
  void writeData() {
    _newBox.put(1, 'Jacobi');
  }

  // Read data method
  void readData() {
    print(_newBox.get(1));
  }

  // Delete data method
  void deleteData() {
    _newBox.delete(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              child: Text('Write'),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: readData,
              child: Text('Read'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: deleteData,
              child: Text('Delete'),
              color: Colors.red,
            ),
      ],),),
    );
  }
}