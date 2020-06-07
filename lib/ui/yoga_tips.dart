import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga/data/get_data.dart';
import 'package:yoga/model/Models.dart';
import 'package:yoga/utils/clippers.dart';

class YogaTipsScreen extends StatelessWidget {
  Size size;

  Future<List<YogaTip>> fetchList() async {
    return await YogaTips().getYogaTips();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
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
                  title: Hero(
                    child: Text('Useful tips'),
                    tag: 'useful_tips_image',
                  ),
                  background: Hero(
                    tag: 'tips_head_image',
                    child: Image.asset(
                      'assets/images/tips_head.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(
            height: size.height,
            width: size.width,
            child: FutureBuilder<List<YogaTip>>(
                future: fetchList(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(child: CircularProgressIndicator());
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      YogaTip tip = snapshot.data[index];
                      return ClipPath(
                        clipper: BottomPatternClipper(),
                        child: Card(
                          color: Colors.white24,
                          margin: EdgeInsets.all(8),
                          child: ExpandablePanel(
                            iconColor: Colors.white,
                            header: Container(
                              width: size.width,
                              margin: EdgeInsets.all(8),
                              child: Text(
                                tip.title,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            expanded: Container(
                              padding: EdgeInsets.all(16),
                              child: Text(tip.desc),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
          ),
        ),
      ),
    );
  }
}
