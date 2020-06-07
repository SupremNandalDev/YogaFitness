class Category {
  String title;
  String desc;
  int time; //Minutes
  String image;
  List<Exercise> exercises;

  exerciseCount() {
    if (exercises == null || exercises.isEmpty) {
      return 'Exercises : unknown';
    }
    return 'Exercises : ' + exercises.length.toString();
  }

  estimatedTime() {
    return 'Estimated Time : ' + time.toString() + ' minutes';
  }

  Category(this.title, this.desc, this.time, this.image, this.exercises);
}

class Exercise {
  String title;
  String desc;
  int time; //Seconds
  String image;
  String video;

  Exercise({this.title, this.desc, this.time, this.image, this.video});
}
