import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Anirudh(),
    ));

class Anirudh extends StatefulWidget {
  @override
  State<Anirudh> createState() => _AnirudhState();
}

class _AnirudhState extends State<Anirudh> {
  int ninjalevel=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Anirudh ID Card',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        setState(() {
          ninjalevel+=1;
        });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.amberAccent,),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40 , 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/terror.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text('Name',
            style: TextStyle(color: Colors.grey,
            letterSpacing: 2.0),
            ),
            SizedBox(height: 10),
            Text('Terror',
              style: TextStyle(color: Colors.amber,
                  letterSpacing: 2.0,
              fontSize:30,
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text('Current Ninja Level',
              style: TextStyle(color: Colors.grey,
                  letterSpacing: 2.0),
            ),
            SizedBox(height: 10),
            Text('$ninjalevel',
              style: TextStyle(color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize:30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text('terror1215@gmail.com',style:
                TextStyle(color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


