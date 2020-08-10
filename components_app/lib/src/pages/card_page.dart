import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        children: [
          _cardType1(),
          SizedBox(
            width: 30.0,
          ),
          _cardType2(),
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  Widget _cardType1() {
    print("CardPage_TAG: _cardType1: ");
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text("This is the card title"),
            subtitle: Text(
                "This is the subtitle of the card for me to review how the subtitle behaviors on the Card"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("OK"),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    print("CardPage_TAG: _cardType2: ");
    return Card(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage("assets/jar_loading.gif"),
            image: NetworkImage("https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg"),
            fadeInDuration: Duration(
              milliseconds: 200
            ),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Image about something"),
          )
        ],
      ),
    );
  }
}
