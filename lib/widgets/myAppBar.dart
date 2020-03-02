import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    return Stack(
      children: <Widget>[
        Container(
          height: mediaquery.size.height * 0.2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xff4069B9), const Color(0xFF284171)],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: mediaquery.size.width * 0.1),
              Text(
                "CONTACT",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        Center(
          child: Container(
            width: mediaquery.size.width * 0.8,
            height: mediaquery.size.height * 0.05,
            margin: EdgeInsets.only(top: mediaquery.size.height * 0.18),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 4),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Contact",
                  suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        print("Search");
                        FocusScope.of(context).requestFocus(FocusNode());
                      }),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
