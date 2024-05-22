import 'package:flutter/material.dart';

class ListTile3 extends StatefulWidget {
  @override
  _ListTile3State createState() => _ListTile3State();
}

class _ListTile3State extends State<ListTile3> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic Operations',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: arithmeticOperation(),
    );
  }

  Widget arithmeticOperation() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          style: TextStyle(color: Colors.white),
          controller: _controller1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.blue, // Set background color to blue
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none, // Remove border
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          style: TextStyle(color: Colors.white),
          controller: _controller2,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.blue, // Set background color to blue
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none, // Remove border
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  int num1 = int.tryParse(_controller1.text) ?? 0;
                  int num2 = int.tryParse(_controller2.text) ?? 0;
                  int sum = num1 + num2;
                  result = sum.toString();
                });
              },
              icon: Icon(Icons.add),
              label: Text('Add'),
            ),
            SizedBox(width: 10),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  int num1 = int.tryParse(_controller1.text) ?? 0;
                  int num2 = int.tryParse(_controller2.text) ?? 0;
                  int diff = num1 - num2;
                  result = diff.toString();
                });
              },
              icon: Icon(Icons.remove),
              label: Text('Subtract'),
            ),
            SizedBox(width: 10),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  int num1 = int.tryParse(_controller1.text) ?? 0;
                  int num2 = int.tryParse(_controller2.text) ?? 0;
                  int product = num1 * num2;
                  result = product.toString();
                });
              },
              icon: Icon(Icons.close),
              label: Text('Multiply'),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Result: ',
            style: TextStyle(fontSize: 24),),
            Text(result,
            style: TextStyle(fontSize: 24),),
          ],
        ),
      ],
    ),
  );
}

}
