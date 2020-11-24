import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: App(),
      title: "Joe",
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            AppBar(),
            Expanded(
              child: Body(),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          appBarIcon(Icons.add_a_photo_outlined,
              color: Colors.black54, isPadding: false),
          appBarIcon(Icons.account_balance_outlined,
              color: Colors.black54, isPadding: false),
          appBarIcon(Icons.add_to_home_screen_outlined,
              color: Colors.black54, isPadding: false),
          appBarIcon(Icons.backpack_outlined,
              color: Colors.black54, isPadding: false),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.teal[900],
                ),
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(15.0),
                height: 225.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Savings",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balance",
                          style: TextStyle(
                            color: Colors.teal[300],
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "\$ 1,700",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40.0,
                          width: 100.0,
                          // padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Colors.teal[800],
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Press Me",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.orange[100],
                ),
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(15.0),
                height: 225.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Checking",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balance",
                          style: TextStyle(
                            color: Colors.brown[300],
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "\$ 42,000",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 20,
                            child: Image(
                              image: AssetImage('assets/s_master.png'),
                            ),
                          ),
                          Text(
                            "24258",
                            style: TextStyle(
                              color: Colors.brown[300],
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SockBox(),
      ],
    );
  }
}

class SockBox extends StatelessWidget {
  const SockBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My stocks",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  )),
              Text("\$ 4,424.21",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30.0,
                padding: EdgeInsets.only(right: 15.0),
                child: Image(
                  image: AssetImage('assets/volks.png'),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        "VOLKS",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    Text(
                      "\$ 245,23",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              appBarIcon(Icons.play_arrow, isPadding: false),
              appBarIcon(Icons.skip_next_outlined, isPadding: false),
              appBarIcon(Icons.arrow_circle_down_outlined, isPadding: false),
            ],
          ),
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              "Cactus.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                appBarIcon(Icons.notifications_active_outlined),
                appBarIcon(Icons.settings),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget appBarIcon(IconData icon,
        {Color color = Colors.black, bool isPadding = true}) =>
    Container(
      padding: EdgeInsets.all(isPadding ? 15.0 : 0.0),
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        // color: Colors.black12,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Icon(icon, color: color),
    );
