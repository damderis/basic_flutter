import 'package:flutter/material.dart';

class ListTile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: ElevatedButton(
          
          onPressed: () {
            _showAlertDialog(context);
          },
          child:  Text('AlertDialog!',
          style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 1, 92, 167),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }

  _showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text('OK',
      style: TextStyle(color: Colors.blue),),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/alert.png',
                width: 40,
                height: 40,
              ),
              SizedBox(width: 10),
              Text('Alert Dialog Box'),
            ],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.white,
          content: Text('CNS3400 Exercise - Semester II 2023/24'),
          actions: [
            okButton,
          ],
        );
      },
    );
  }
}
