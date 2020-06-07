import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:video_player/video_player.dart';
import 'package:yoga/model/Models.dart';
import 'package:yoga/utils/clippers.dart';

class ExerciseDetail extends StatefulWidget {
  Exercise exercise;

  ExerciseDetail({this.exercise});

  @override
  _ExerciseDetailState createState() => _ExerciseDetailState();
}

class _ExerciseDetailState extends State<ExerciseDetail> {
  FlutterTts flutterTts;
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  bool _ttsStatus = false;

  Future _speak() async {
    if (widget.exercise.desc != null) {
      if (widget.exercise.desc.isNotEmpty) {
        var result = await flutterTts.speak(widget.exercise.desc);
        // if (result == 1) means okay and good to go bc.
      }
    }
  }

  Future _stop() async {
    var result = await flutterTts.stop();
  }

  Widget playPauseIcon() {
    if (_ttsStatus) {
      return Icon(Icons.pause);
    }
    return Icon(Icons.play_arrow);
  }

  @override
  void initState() {
    flutterTts = FlutterTts();
    flutterTts.setVolume(1);
    flutterTts.setSpeechRate(1.5);
    flutterTts.setPitch(0.6);
    _controller = VideoPlayerController.asset(widget.exercise.video);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    flutterTts.stop();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Read and Listen'),
        actions: [
          IconButton(
            icon: playPauseIcon(),
            onPressed: () {
              if (_ttsStatus) {
                _stop();
                setState(() {
                  _ttsStatus = false;
                });
              } else {
                _speak();
                setState(() {
                  _ttsStatus = true;
                });
              }
            },
          ),
        ],
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
                margin: EdgeInsets.all(8),
                child: ClipPath(
                  clipper: BottomPatternClipper(),
                  child: Card(
                    color: Colors.white,
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
                  ),
                ),
                //Play the fucking video in here...
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.exercise.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text('How to perform :'),
              ),
              Text(widget.exercise.desc)
            ],
          ),
        ),
      ),
    );
  }
}
