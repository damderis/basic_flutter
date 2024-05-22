import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Importing custom ListTile classes
import 'listtile_1.dart';
import 'listtile_2.dart';
import 'listtile_3.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String formattedDate = '';
  String dayOfWeek = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  DateTime _toMalaysiaTime(DateTime dateTime) {
    return dateTime.toUtc().add(Duration(hours: 8));
  }

  void _updateTime() {
    DateTime now = DateTime.now();
    DateTime malaysiaTime = _toMalaysiaTime(now);
    setState(() {
      formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(malaysiaTime);
      dayOfWeek = DateFormat('EEEE').format(malaysiaTime);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              accountName: Text('Adam Idris'),
              accountEmail: Text('idrisismol@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/man_6.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.notification_important, color: Colors.red),
              title: Text('Show Alert'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ListTile1()));
              },
            ),
            ListTile(
              leading: Icon(Icons.image, color: Colors.blue),
              title: Text('Image Layout'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ListTile2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate, color: Colors.green),
              title: Text('Arithmetic'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ListTile3()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.close, color: Colors.black),
              title: Text('Close'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'CNS3400',
              style: TextStyle(fontSize: 20, fontFamily: 'Righteous'),
            ),
            Text(
              'Lab Exercise – Semester II 2023/2024',
              style: TextStyle(fontSize: 20, fontFamily: 'Righteous'),
            ),
            if (formattedDate.isNotEmpty)
              Text(
                'Date and time: $formattedDate',
                style: TextStyle(fontSize: 20, fontFamily: 'Righteous'),
              ),
            if (dayOfWeek.isNotEmpty)
              Text(
                'Day: $dayOfWeek',
                style: TextStyle(fontSize: 20, fontFamily: 'Righteous'),
              ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mobile_pic.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
