import 'package:flutter/material.dart';
import 'package:yoga/data/get_data.dart';
import 'package:yoga/model/Models.dart';

class ExerciseListScreen extends StatelessWidget {
  Category category;

  ExerciseListScreen(this.category);

  Size size;

  Future<List<Exercise>> fetchList() async {
    return Yoga().getExercise();
  }

  Widget getCell(Exercise ex) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ClipPath(
        clipper: MovieTicketBothSidesClipper(),
        child: Card(
          color: Colors.white24,
          child: Column(
            children: [
              Container(
                child: Icon(
                  Icons.image,
                  size: 100,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(ex.title), Text(ex.desc)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getList(List<Exercise> data) {
    List<Widget> list = [];
    for (Exercise ex in data) {
      list.add(getCell(ex));
      list.add(getCell(ex));
      list.add(getCell(ex));
      list.add(getCell(ex));
      list.add(getCell(ex));
      list.add(getCell(ex));
    }
    return list;
  }

  Widget basicList() {
    return Container(
      width: size.width,
      child: FutureBuilder<List<Exercise>>(
          future: fetchList(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            return GridView.count(
              crossAxisCount: 2,
              children: getList(snapshot.data),
            );
          }),
    );
  }

  Widget specificList() {
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
                  background: Image.asset(
                    category.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: GridView.count(
            crossAxisCount: 2,
            children: getList(category.exercises),
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
      return basicList();
    }
    return specificList();
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
