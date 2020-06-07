import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga/data/get_data.dart';
import 'package:yoga/model/Models.dart';

import 'exercise_list.dart';

class HomeScreen extends StatelessWidget {
  Future<List<Category>> fetchList() async {
    return Yoga().getCategories();
  }

  Size size;

  Widget renderCategory(BuildContext context, Category cat) {
    return Container(
      width: size.width,
      child: Card(
        margin: EdgeInsets.all(16),
        child: ExpandablePanel(
          hasIcon: false,
          header: Container(
            width: size.width,
            height: size.height * (.2),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Hero(
                        tag: cat.title,
                        child: Image.asset(
                          cat.image,
                          fit: BoxFit.cover,
                          width: size.width * (.45),
                          height: size.height * (.2),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    ClipPath(
                      clipper: ClipTopRight(size.width * (.08)),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        color: Colors.white70,
                        margin: EdgeInsets.all(0),
                        child: Container(
                            width: size.width * (.61),
                            height: size.height * (.2)),
                      ),
                    ),
                    ClipPath(
                      clipper: ClipTopRight(size.width * (.08)),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        margin: EdgeInsets.all(0),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          width: size.width * (.6),
                          height: size.height * (.2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(cat.title),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                cat.desc,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white70),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          expanded: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.format_list_bulleted,
                      size: 18,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(cat.exerciseCount()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.timer, size: 18),
                    SizedBox(
                      width: 10,
                    ),
                    Text(cat.estimatedTime()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      child: Text('View Exercises'),
                      textColor: Colors.white,
                      color: Colors.blueGrey,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExerciseListScreen(cat)));
//                        Navigator.pop(context);
                      },
                    ),
                    RaisedButton(
                        child: Text('Start'),
                        textColor: Colors.white,
                        color: Colors.redAccent,
                        onPressed: () {
//                          _validate();
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getList(BuildContext context, List<Category> data) {
    List<Widget> list = [];
    for (Category cat in data) {
      list.add(renderCategory(context, cat));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: FutureBuilder<List<Category>>(
          future: fetchList(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            return ListView(
              children: getList(context, snapshot.data),
            );
          }),
    );
  }
}

class ClipTopRight extends CustomClipper<Path> {
  var clip;

  ClipTopRight(this.clip);

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width - clip, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
