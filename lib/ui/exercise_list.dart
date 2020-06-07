import 'package:flutter/material.dart';
import 'package:yoga/data/get_data.dart';
import 'package:yoga/model/Models.dart';

import 'exercise_detail.dart';

class ExerciseListScreen extends StatelessWidget {
  Category category;

  ExerciseListScreen(this.category);

  Size size;

  Future<List<Exercise>> fetchList() async {
    return Yoga().getExercise();
  }

  Widget getCell(BuildContext context, Exercise ex) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ExerciseDetail(exercise: ex)));
      },
      child: Container(
        child: Container(
          margin: EdgeInsets.all(8),
          child: ClipPath(
            clipper: MovieTicketBothSidesClipper(),
            child: Card(
              color: Colors.white24,
              child: Column(
                children: [
                  Image.asset(
                    ex.image,
                    height: size.width * (.3),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text(ex.title),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getList(BuildContext context, List<Exercise> data) {
    List<Widget> list = [];
    for (Exercise ex in data) {
      list.add(getCell(context, ex));
    }
    return list;
  }

  Widget basicList(BuildContext context) {
    var itemWidth = size.width * (.5);
    var itemHeight = size.width * (.6);
    return Container(
      width: size.width,
      child: FutureBuilder<List<Exercise>>(
          future: fetchList(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            return GridView.count(
              crossAxisCount: 2,
              childAspectRatio: (itemWidth / itemHeight),
              children: getList(context, snapshot.data),
            );
          }),
    );
  }

  Widget specificList(BuildContext context) {
    var itemWidth = size.width * (.5);
    var itemHeight = size.width * (.6);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_image.png"),
                fit: BoxFit.cover)),
        child: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrollable) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: true,
                expandedHeight: size.width * (.75),
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(category.title),
                  background: Hero(
                    tag: category.title,
                    child: Image.asset(
                      category.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ];
          },
          body: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: (itemWidth / itemHeight),
            children: getList(context, category.exercises),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            //TODO start exercises...
          },
          icon: Icon(Icons.play_arrow),
          label: Text('Start')),
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (category == null) {
      return basicList(context);
    }
    return specificList(context);
  }
}

class MovieTicketBothSidesClipper extends CustomClipper<Path> {
  /*@override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    double x = 0;
    double y = size.height;
    double yControlPoint = size.height * .85;
    double increment = size.width / 12;

    while (x < size.width) {
      path.quadraticBezierTo(
          x + increment / 2, yControlPoint, x + increment, y);
      x += increment;
    }

    path.lineTo(size.width, 0.0);

    while (x > 0) {
      path.quadraticBezierTo(
          x - increment / 2, size.height * .15, x - increment, 0);
      x -= increment;
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) {
    return old != this;
  }*/
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    double x = 0;
    double y = size.height;
    double yControlPoint = size.height * .88;
    double increment = size.width / 15;

    while (x < size.width) {
      path.quadraticBezierTo(
          x + increment / 2, yControlPoint, x + increment, y);
      x += increment;
    }
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) {
    return old != this;
  }
}
