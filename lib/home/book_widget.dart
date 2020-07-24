import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  String imageUrl =
      "https://cdn.jpegmini.com/user/images/slider_puffin_jpegmini_mobile.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 240,
      margin: EdgeInsets.fromLTRB(24, 12, 24, 12),
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.centerRight,
              child: Image.network(
                imageUrl,
              )),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 230,
              height: 200,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 10)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Book Title",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "book author",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
