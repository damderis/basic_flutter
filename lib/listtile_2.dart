import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListTile2 extends StatefulWidget {
  @override
  _ListTile2State createState() => _ListTile2State();
}

class _ListTile2State extends State<ListTile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: myColumn(),
    );
  }

  Widget myColumn() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Fluttertoast.showToast(
              msg: "#WeLoveUPM",
              fontSize: 15,
              backgroundColor: Colors.black54,
              gravity: ToastGravity.BOTTOM,
              toastLength: Toast.LENGTH_LONG,
            );
          },
          child: Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/upmstudents.jpg'),
                fit: BoxFit.contain,
                alignment: Alignment.center, // Center the image within the container
              ),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.black, width: 1),
            ),
          ),
        ),
      ],
    ),
  );

  }
}
