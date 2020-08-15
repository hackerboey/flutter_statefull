import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int level=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:(){
            setState(() {
              level=level+1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/team.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.yellowAccent,
              thickness: 10.0,
              indent: 50.0,
              endIndent: 50.0,
            ),
            Text('Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text('Example Name',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Text('Current Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text('$level',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  size: 30.0,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'example@test.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),

              ],
            ),
           SizedBox(height: 30.0,),
           Center(
             child: RaisedButton(
                 onPressed: (){
              setState(() {
                level=0;
              });
             },

             child: Text('Reset'),),
           )
          ],
        ),
      ) ,
    );
  }
}
