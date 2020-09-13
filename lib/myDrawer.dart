import 'package:flutter/material.dart';
import 'package:venusmovieapp/main.dart';
import 'package:venusmovieapp/playList.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(20.0)),
            new ListTile(
              leading: new Icon(
                Icons.home,
                color: Colors.amber,
              ),
              title: new Text(
                "HOME",
                style: new TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(
                Icons.video_library,
                color: Colors.red,
              ),
              title: new Text(
                "Indonesian Songs Cover",
                style: new TextStyle(fontSize: 18.0),
              ),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new ListVideo(
                        url: "https://venusmovieapp.herokuapp.com/",
                        title: "Indonesian Songs Cover",
                      ))),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(
                Icons.video_library,
                color: Colors.red,
              ),
              title: new Text(
                "Western Songs Cover",
                style: new TextStyle(fontSize: 18.0),
              ),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new ListVideo(
                        url: "https://venuswesternsong.herokuapp.com/",
                        title: "Western Songs Cover",
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
