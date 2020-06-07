import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:yoga/model/Models.dart';

class ExerciseDetail extends StatelessWidget {
  Exercise exercise;

  ExerciseDetail({this.exercise});

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  Widget build(BuildContext context) {
    _controller = VideoPlayerController.asset(exercise.video);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(exercise.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_image.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      _controller.play();
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
                //Play the fucking video in here...
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                exercise.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text('How to perform :'),
              ),
              Text(exercise.desc)
            ],
          ),
        ),
      ),
    );
  }
}
