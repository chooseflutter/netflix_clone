import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../components/movie_card.dart';
import '../../../components/special_movie.dart';
import '../../../components/top_bar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  bool _showTobBar = true, _flag = true;
  late ScrollController controller ;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
    controller.addListener(() {
      _flag = controller.position.userScrollDirection == ScrollDirection.forward;

      if (_showTobBar != _flag) setState(() {});
      _showTobBar = _flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: controller,
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SpecialMovie(
                  image: "assets/images/movies/logo.png",
                ),
                SizedBox(height: .1),
                loadPopularOnNetflix(),
                SizedBox(height: .1),
                loadTrendingNow(),
                SizedBox(height: .1),
                loadNewReleases(),
                SizedBox(height: .1),
              ],
            ),
          ),
          AnimatedPositioned(
            top: _showTobBar ? 0 : -80,
            duration: Duration(milliseconds: 300),
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _showTobBar ? 1 : 0,
              child: IgnorePointer(
                ignoring: !_showTobBar,
                child: TopBar(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loadPopularOnNetflix() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Popular on Netflix",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),
              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget loadTrendingNow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Trending Now",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget loadNewReleases() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "New Releases",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
              MovieCard(
                image: AssetImage("assets/images/movies/logo.png"),

              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }


}
