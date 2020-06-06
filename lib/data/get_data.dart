import 'package:yoga/model/Models.dart';

class Yoga {
  Future<List<Category>> getCategories() async {
    List<Category> list = [];
    list.add(getBeginnerCat());
    list.add(getMorningCat());
    list.add(getBalanceCat());
    list.add(getBeginnerCat());
    list.add(getMorningCat());
    list.add(getBalanceCat());
    list.add(getBeginnerCat());
    list.add(getMorningCat());
    list.add(getBalanceCat());
    return list;
  }

  Future<List<Exercise>> getExercise() async {
    List<Exercise> ex = [];
    ex.add(Exercise('Mountain Pose',
        'Startdid asdagskdu as d ashdhgas das das ', 90, '', ''));
    return ex;
  }

  getBeginnerCat() {
    return Category(
        'Beginner Yoga',
        'Yoga for complete beginners. A 10 minutes home yoga workout with easy follow poses.',
        10,
        'assets/images/cat_beginner.jpg', [
      Exercise('Mountain Pose', 'Startdid asdagskdu as d ashdhgas das das ', 90,
          '', '')
    ]);
  }

  getMorningCat() {
    return Category(
        'Morning Yoga',
        'A 7 minutes morning workout to start a wonderful day.',
        7,
        'assets/images/cat_morning.jpg',
        null);
  }

  getBalanceCat() {
    return Category(
        'Balance Yoga',
        'A 8 minutes workout calms your mind and helps you feel the peace. Let go of your worries and inhibitions',
        8,
        'assets/images/cat_balance.jpg',
        null);
  }
}
