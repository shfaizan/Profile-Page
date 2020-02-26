import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatelessWidget {
  final textStylesState = TextStyle(
    fontSize: 11.0,
    color: Colors.white,
  );
  final textStyleTop = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  final textStyleStatus = TextStyle(
    fontSize: 11.0,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.pinkAccent.withOpacity(0.9),
              Colors.deepPurple.withOpacity(0.2),
            ], stops: [
              0.5,
              0.7,
              1
            ], begin: Alignment.topRight)),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 32.0),
              _profileRow(),
              _topRow(),
              _statesRow(),
              _bottomCard()
            ],
          )
        ],
      ),
    );
  }

  _profileRow() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("book.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Faizan Shaikh",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Your status is displayed here",
                style: textStylesState,
              )
            ],
          )
        ],
      ),
    );
  }

  _topRow() {
    return IconTheme(
      data: IconThemeData(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.cast),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  _statesRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "250",
                  style: textStyleTop,
                ),
                Text(
                  "Books Donated",
                  style: textStylesState,
                )
              ],
            ),
            Text(
              "\u007c",
              style: textStylesState,
            ),
            Column(
              children: <Widget>[
                Text(
                  "120",
                  style: textStyleTop,
                ),
                Text(
                  "Books Requested",
                  style: textStylesState,
                )
              ],
            ),
            Text(
              "\u007c",
              style: textStylesState,
            ),
            Column(
              children: <Widget>[
                Text(
                  "20",
                  style: textStyleTop,
                ),
                Text(
                  "Trade point",
                  style: textStylesState,
                )
              ],
            ),
            Text(
              "\u007c",
              style: textStylesState,
            )
          ],
        ));
  }

  _bottomCard() {
    return Expanded(
        child: Container(
      child: Container(
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(50, 70),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                    )),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "My Donations",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 100.0,
                        height: 300.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            item(),
                            item(),
                            item(),
                            item(),
                            item(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.8, -0.8),
              child: Container(
                width: 50.0,
                height: 50.0,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.pink.withOpacity(0.4),
                        spreadRadius: 1.0,
                        blurRadius: 3.0)
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  item() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage("book.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 130.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "This book is about",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(4.0),
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("book.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    Container(
                      margin: EdgeInsets.all(4.0),
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("book.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    Container(
                      margin: EdgeInsets.all(4.0),
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("book.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    Spacer(),
                    Icon(
                      Icons.thumb_up,
                      size: 20.0,
                      color: Colors.grey,
                    ),
                    Text(
                      "100",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
