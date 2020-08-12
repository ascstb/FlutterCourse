import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage("https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTIwNjA4NjM0MTk3MjE0NzMy/stan-lee-21101093-1-402.jpg"),
            radius: 25.0,
          ),
        Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.brown,
            )
        ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://www.elsoldeacapulco.com.mx/incoming/wpgvi0-villanos-creados-por-stan-lee.jpg/alternates/LANDSCAPE_768/Villanos%20creados%20por%20Stan%20lee.jpg"),
          placeholder: AssetImage("assets/jar_loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }

}