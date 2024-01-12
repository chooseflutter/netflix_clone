import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool isSearchClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.green,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.7),
            Colors.black.withOpacity(0),
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image(
                      image: AssetImage("assets/images/movies/logo.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Row(
                    children: [
                      if (!isSearchClicked)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.cast),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isSearchClicked = true;
                                });
                              },
                              icon: Icon(Icons.search),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.person),
                            ),
                          ],
                        ),
                      if (isSearchClicked)
                        SizedBox(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            onChanged: (value) {
                              // Handle search text change
                            },
                            onSubmitted: (value) {
                              setState(() {
                                isSearchClicked = false;
                              });
                            },
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: .1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("TV Shows"),
                Text("Movies"),
                Text("Categories"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
