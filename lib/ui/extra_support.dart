import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yoga/ui/yoga_tips.dart';
import 'package:yoga/utils/clippers.dart';

class ExtraSupportItem {
  String titleTag;
  String imageTag;
  String title;
  String desc;
  String image;
  Widget route;

  ExtraSupportItem(
      {this.titleTag,
      this.imageTag,
      this.title,
      this.desc,
      this.image,
      this.route});
}

class ExtraSupportScreen extends StatelessWidget {
  List<ExtraSupportItem> items = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (items.isEmpty) {
      items.add(ExtraSupportItem(
          titleTag: 'useful_tips_title',
          title: 'Useful Tips',
          desc: 'Some tips to help you achieve your goals effectively',
          image: 'assets/images/tips_head.jpg',
          imageTag: 'tips_head_image',
          route: YogaTipsScreen()));
    }
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        ExtraSupportItem item = items[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => item.route));
          },
          child: Container(
            margin: EdgeInsets.all(16),
            width: size.width,
            height: size.width * (.3),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Hero(
                        tag: item.imageTag,
                        child: Image.asset(
                          item.image,
                          fit: BoxFit.cover,
                          width: size.width * (.45),
                          height: size.height * (.2),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: size.width * (.6),
                      height: size.height * (.3),
                      child: ClipPath(
                        clipper: OvalLeftClipper(depth: 20),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Hero(
                                  tag: item.titleTag,
                                  child: Text(item.title),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  item.desc,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white70),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
