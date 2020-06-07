import 'package:yoga/model/Models.dart';

class Yoga {
  Future<List<Category>> getCategories() async {
    List<Category> list = [
      getBeginnerCat(),
      getMorningCat(),
      getBalanceCat(),
      getDynamicCat(),
      getCoreCat(),
      getSunSalutationCat(),
      getPowerCat(),
      getGentleCat(),
      getTwistStretchCat(),
      getBackCareCat(),
    ];
    return list;
  }

  getBeginnerCat() {
    List<Exercise> ex = [
      getExMountainPose(),
      getExDownwardFacingDog(),
      getExPlank(),
      getExTreeLeft(),
      getExTreeRight(),
      getExWarriorI(),
      getExWarriorIILeft(),
      getExWarriorIIRight(),
      getExSeatedSideBendLeft(),
      getExSeatedSideBendRight(),
      getExBridgeLeft(),
      getExBridgeRight(),
      getExChildsPose()
    ];
    return Category(
        title: 'Beginner Yoga',
        desc:
            'Yoga for complete beginners. A 10 minutes home yoga workout with easy follow poses.',
        time: 10,
        image: 'assets/images/cat_beginner.jpg',
        exercises: ex);
  }

  getMorningCat() {
    List<Exercise> ex = [
      getExEasyPose(),
      getExNeckStretch(),
      getExWarriorI(),
      getExWarriorIILeft(),
      getExWarriorIIRight(),
      getExCatCamel(),
      getExShoulderExpansion(),
      getExDownwardFacingDog(),
      getExForearmPlank(),
      getExCobra(),
      getExChildsPose()
    ];
    return Category(
        title: 'Morning Yoga',
        desc: 'A 7 minutes morning workout to start a wonderful day.',
        time: 7,
        image: 'assets/images/cat_morning.jpg',
        exercises: ex
    );
  }

  getBalanceCat() {
    List<Exercise> ex = [
      getExNeckStretch(),
      getExWindRelievingPoseVariationLeft(),
      getExWindRelievingPoseVariationRight(),
      getExWarriorIIILeft(),
      getExWarriorIIIRight(),
      getExTreeLeft(),
      getExTreeRight(),
      getExPrayerPose(),
      getExBigToesPoseVariation(),
      getExMountainPose(),
      getExHappyBaby(),
      getExEasyPose(),
      getExHighPrayerVariation()
    ];
    return Category(
        title: 'Balance Yoga',
        desc: 'A 8 minutes workout calms your mind and helps you feel the peace. Let go of your worries and inhibitions',
        time: 7,
        image: 'assets/images/cat_balance.jpg',
        exercises: ex
    );
  }

  getDynamicCat() {
    List<Exercise> ex = [
      getExEasyPose(),
      getExStandingForwardFold(),
      getExYogaSquat(),
      getExWindRelievingPoseVariationLeft(),
      getExWindRelievingPoseVariationRight(),
      getExPrayerPose(),
      getExSideAngleLeft(),
      getExSideAngleRight(),
      getExTreeLeft(),
      getExTreeRight()
    ];
    return Category(
        title: 'Dynamic Yoga',
        desc: 'This workout gives you the chance to feel the inner energy and sense of yourself',
        time: 7,
        image: 'assets/images/cat_dynamic.jpg',
        exercises: ex
    );
  }

  getCoreCat() {
    List<Exercise> ex = [
      getExShoulderExpansion(),
      getExBoat(),
      getExTwistedChairLeft(),
      getExTwistedChairRight(),
      getExAccomplishedPoseWithEagleArmsLeft(),
      getExAccomplishedPoseWithEagleArmsRight(),
      getExSeatedSpinalTwistLeft(),
      getExSeatedSideBendRight(),
      getExBoundSideAngleLeft(),
      getExBoundSideAngleRight(),
      getExCobra()
    ];
    return Category(
        title: 'Core Yoga',
        desc: 'This workout focuses on different twist moves and it helps releasing stress and tiredness',
        time: 7,
        image: 'assets/images/cat_core.jpg',
        exercises: ex
    );
  }

  getSunSalutationCat() {
    List<Exercise> ex = [
      getExHappyBaby(),
      getExHighPrayerVariation(),
      getExBigToesPoseVariation(),
      getExDownwardFacingDog(),
      getExLowLungesLeft(),
      getExLowLungesRight(),
      getExSingleLegDownwardDogLeft(),
      getExSingleLegDownwardDogRight(),
      getExStandingSideBend(),
      getExPlank(),
      getExShoulderExpansion(),
      getExBoundSideAngleLeft(),
      getExBoundSideAngleRight(),
      getExEasyPose()
    ];
    return Category(
        title: 'Sun Salutation',
        desc: 'This yoga workout is designed to boost your inner energy and feel the body strength.',
        time: 10,
        image: 'assets/images/cat_sun.jpg',
        exercises: ex
    );
  }

  getPowerCat() {
    List<Exercise> ex = [
      getExBigToesPoseVariation(),
      getExStandingSideBend(),
      getExTreeLeft(),
      getExTreeRight(),
      getExStandingForwardFold(),
      getExLowLungesLeft(),
      getExLowLungesRight(),
      getExCrescentLungeWithTwistLeft(),
      getExCrescentLungeWithTwistRight(),
      getExDownwardFacingDog(),
      getExSingleLegDownwardDogLeft(),
      getExSingleLegDownwardDogRight(),
      getExSeatedSpinalTwistLeft(),
      getExSeatedSpinalTwistRight(),
      getExEasyPose()
    ];
    return Category(
        title: 'Power Yoga',
        desc: 'This yoga session focuses on channeling the power inside your body.',
        time: 15,
        image: 'assets/images/cat_power.jpg',
        exercises: ex
    );
  }

  getGentleCat() {
    List<Exercise> ex = [
      getExNeckStretch(),
      getExShoulderExpansion(),
      getExStandingForwardFold(),
      getExDownwardFacingDog(),
      getExStandingSideBend(),
      getExSeatedSpinalTwistLeft(),
      getExSeatedSpinalTwistRight(),
      getExTreeLeft(),
      getExTreeRight(),
      getExTigerLeft(),
      getExTigerRight(),
      getExBoundSideAngleLeft(),
      getExBoundSideAngleRight(),
      getExSpinalRolling(),
      getExCatCamel()
    ];
    return Category(
        title: 'Gentle Yoga',
        desc: 'This workout extends your entire body and relax as much as possible.',
        time: 10,
        image: 'assets/images/cat_gentle.jpg',
        exercises: ex
    );
  }

  getTwistStretchCat() {
    List<Exercise> ex = [
      getExPrayerPose(),
      getExBigToesPoseVariation(),
      getExMountainPose(),
      getExStandingForwardFold(),
      getExTigerLeft(),
      getExTigerRight(),
      getExShoulderExpansion(),
      getExBoundSideAngleLeft(),
      getExBoundSideAngleRight(),
      getExCatCamel(),
      getExCobra()
    ];
    return Category(
        title: 'Twist Stretch',
        desc: 'This Yoga session helps you extend all your body parts and release the stress',
        time: 7,
        image: 'assets/images/cat_twist.jpg',
        exercises: ex
    );
  }

  getBackCareCat() {
    List<Exercise> ex = [
      getExLocustPoseVariation(),
      getExHappyBaby(),
      getExHighPrayerVariation(),
      getExSpinalRolling(),
      getExBoundSideAngleLeft(),
      getExBoundSideAngleRight(),
      getExCatCamel(),
      getExGateLeft(),
      getExGateRight(),
      getExWarriorIIILeft(),
      getExWarriorIIIRight(),
      getExModifiedSidePlankLeft(),
      getExModifiedSidePlankRight(),
      getExChildsPose(),
      getExSeatedSpinalTwistLeft(),
      getExSeatedSpinalTwistRight(),
      getExAccomplishedPoseWithEagleArmsLeft(),
      getExAccomplishedPoseWithEagleArmsRight()
    ];
    return Category(
        title: 'Back Care',
        desc: 'A yoga workout routine to help relieve back and neck tightness.',
        time: 15,
        image: 'assets/images/cat_back.jpg',
        exercises: ex
    );
  }

  Future<List<Exercise>> getExercise() async {
    List<Exercise> ex = [
      getExAccomplishedPoseWithEagleArmsLeft(),
      getExAccomplishedPoseWithEagleArmsLeft(),
      getExAccomplishedPoseWithEagleArmsLeft(),
      getExAccomplishedPoseWithEagleArmsRight(),
      getExBigToesPoseVariation(),
      getExBoat(),
      getExBoundSideAngleLeft(),
      getExBoundSideAngleRight(),
      getExBridgeLeft(),
      getExBridgeRight(),
      getExCatCamel(),
      getExChildsPose(),
      getExCobra(),
      getExCrescentLungeWithTwistLeft(),
      getExCrescentLungeWithTwistRight(),
      getExDownwardFacingDog(),
      getExEasyPose(),
      getExForearmPlank(),
      getExGateLeft(),
      getExGateRight(),
      getExHappyBaby(),
      getExHighPrayerVariation(),
      getExLocustPoseVariation(),
      getExLowLungesLeft(),
      getExLowLungesRight(),
      getExModifiedSidePlankLeft(),
      getExModifiedSidePlankRight(),
      getExMountainPose(),
      getExNeckStretch(),
      getExPlank(),
      getExPrayerPose(),
      getExSeatedSideBendLeft(),
      getExSeatedSideBendRight(),
      getExSeatedSpinalTwistLeft(),
      getExSeatedSpinalTwistRight(),
      getExShoulderExpansion(),
      getExSideAngleLeft(),
      getExSideAngleRight(),
      getExSingleLegDownwardDogLeft(),
      getExSingleLegDownwardDogRight(),
      getExSpinalRolling(),
      getExStandingForwardFold(),
      getExStandingSideBend(),
      getExTigerLeft(),
      getExTigerRight(),
      getExTreeLeft(),
      getExTreeRight(),
      getExTwistedChairLeft(),
      getExTwistedChairRight(),
      getExWarriorI(),
      getExWarriorIILeft(),
      getExWarriorIIRight(),
      getExWarriorIIILeft(),
      getExWarriorIIIRight(),
      getExWindRelievingPoseVariationLeft(),
      getExWindRelievingPoseVariationRight(),
      getExYogaSquat(),
    ];
    return ex;
  }

  getExAccomplishedPoseWithEagleArmsLeft() {
    return Exercise(
        title: 'Accomplished Pose with Eagle Arms(Left)',
        desc:
            'Sit with your knees bent out to either side and feet in front of your pubic bone, left foot in front of right. Bend your elbows and hook the right elbow underneath the left. Cross at the wrists so that your palms face in. Lift your elbows and press your palms forward. Repeat on second side with right foot in front and left elbow underneath.',
        time: 10,
        image: 'assets/images/poses/accomplishedposewitheaglearmsleft.png',
        video: 'assets/images/poses/accomplishedposewitheaglearmsleft.mp4');
  }

  getExAccomplishedPoseWithEagleArmsRight() {
    return Exercise(
        title: 'Accomplished Pose with Eagle Arms(Right)',
        desc:
            'Sit with your knees bent out to either side and feet in front of your pubic bone, right foot in front of left. Bend your elbows and hook the left elbow underneath the right. Cross at the wrists so that your palms face in. Lift your elbows and press your palms forward. Repeat on second side with left foot in front and right elbow underneath.',
        time: 10,
        image: 'assets/images/poses/accomplishedposewitheaglearmsright.png',
        video: 'assets/images/poses/accomplishedposewitheaglearmsright.mp4');
  }

  getExBigToesPoseVariation() {
    return Exercise(
        title: 'Big Toes Pose Variation',
        desc:
            'Sit with your knees bent and soles of the feet planted in front of you. Place your hands under your thighs and lift your feet off of the ground so that you are balancing on your sitting bones. Extend your legs as much as you can without rounding your lower back. Over time, as your flexibility increases, you may be able to slide your hands up your legs towards your feet and eventually hold your big toes with the first three fingers of each hand. ',
        time: 10,
        image: 'assets/images/poses/bigtoesposevariation.png',
        video: 'assets/images/poses/bigtoesposevariation.mp4');
  }

  getExBoat() {
    return Exercise(
        title: 'Boat',
        desc:
            'Sit with your knees bent, soles of the feet planted in front of you, and arms outstretched. Lift your feet off the ground and bring your shins to parallel the ceiling, arms extended next to your legs. Balancing on your sitting bones, hold for at least 5 breaths. ',
        time: 10,
        image: 'assets/images/poses/boat.png',
        video: 'assets/images/poses/boat.mp4');
  }

  getExBoundSideAngleLeft() {
    return Exercise(
        title: 'Bound Side Angle (Left)',
        desc: 'one is hard to explain. Watch the 3d video. ',
        time: 10,
        image: 'assets/images/poses/boundsideangleleft.png',
        video: 'assets/images/poses/boundsideangleleft.mp4');
  }

  getExBoundSideAngleRight() {
    return Exercise(
        title: 'Bound Side Angle (Right)',
        desc: 'one is hard to explain. Watch the 3d video. ',
        time: 10,
        image: 'assets/images/poses/boundsideangleright.png',
        video: 'assets/images/poses/boundsideangleright.mp4');
  }

  getExBridgeLeft() {
    return Exercise(
        title: 'Bridge (Left)',
        desc:
            'Lie on your back with your arms at your sides and the soles of your feet planted hips distance apart. The outer edges of your feet should be parallel to each other and your fingertips should graze the edges of your heels. Lift your pelvis off of the floor and bring your upper arms towards each other underneath you, interlacing your fingers on the floor. Press into the backs of your arms to lift your chest. Bring your feet together, draw your right knee in towards your chest, and extend the right leg straight up in the air. Return your right foot to the floor and repeat with the left leg lifted.',
        time: 10,
        image: 'assets/images/poses/bridgeleft.png',
        video: 'assets/images/poses/bridgeleft.mp4');
  }

  getExBridgeRight() {
    return Exercise(
        title: 'Bridge (Right)',
        desc:
            'Lie on your back with your arms at your sides and the soles of your feet planted hips distance apart. The outer edges of your feet should be parallel to each other and your fingertips should graze the edges of your heels. Lift your pelvis off of the floor and bring your upper arms towards each other underneath you, interlacing your fingers on the floor. Press into the backs of your arms to lift your chest. Bring your feet together, draw your left knee in towards your chest, and extend the left leg straight up in the air. Return your left foot to the floor and repeat with the right leg lifted. ',
        time: 10,
        image: 'assets/images/poses/bridgeright.png',
        video: 'assets/images/poses/bridgeright.mp4');
  }

  getExCatCamel() {
    return Exercise(
        title: 'Cat Camel',
        desc:
            'Sit on the floor with knees bent and feet flat. Lean torso back 45 degrees and place palms on floor under shoulders, finger facing out. Bring left knee to chest and place left foot atop the right knee. Bend elbows directly behind you and lift hips a few inches. Repeat. ',
        time: 10,
        image: 'assets/images/poses/catcamel.png',
        video: 'assets/images/poses/catcamel.mp4');
  }

  getExChildsPose() {
    return Exercise(
        title: 'Child\'s Pose',
        desc:
            'Start on your hands and knees in a tabletop position. Bring your big toes together and sit back on your heels as you release your forehead to the floor. Reach your arms alongside your body, palms face up. ',
        time: 10,
        image: 'assets/images/poses/childspose.png',
        video: 'assets/images/poses/childspose.mp4');
  }

  getExCobra() {
    return Exercise(
        title: 'Cobra',
        desc:
            'Lie facedown on the floor with your palms near your chest. Lift your torso by strengthening your arms and bending at the hips. Pull shoulders back and push chest out. Hold for length of exercise. ',
        time: 10,
        image: 'assets/images/poses/cobra.png',
        video: 'assets/images/poses/cobra.mp4');
  }

  getExCrescentLungeWithTwistLeft() {
    return Exercise(
        title: 'Crescent Lunge with Twist (Left)',
        desc:
            'Start in a lunge with your left foot forward and your fingertips framing the left foot on the ground. Make sure that your left knee is bent at a 90 degree angle and stacked over your ankle. Lower your right knee and the top of your right foot to the floor. Climb your hands onto your left thigh as you lift your chest and align your shoulders above your hips. As you inhale, lengthen your spine and twist to the left, placing your right palm outside of your left knee and draping your left hand down the back of your right thigh. To complete the twist, look over your left shoulder. Repeat on right side. ',
        time: 10,
        image: 'assets/images/poses/crescentlungewithtwistleft.png',
        video: 'assets/images/poses/crescentlungewithtwistleft.mp4');
  }

  getExCrescentLungeWithTwistRight() {
    return Exercise(
        title: 'Crescent Lunge with Twist (Right)',
        desc:
            'Start in a lunge with your right foot forward and your fingertips framing the right foot on the ground. Make sure that your right knee is bent at a 90 degree angle and stacked over your ankle. Lower your left knee and the top of your left foot to the floor. Climb your hands onto your right thigh as you lift your chest and align your shoulders above your hips. As you inhale, lengthen your spine and twist to the right, placing your left palm outside of your right knee and draping your right hand down the back of your left thigh. To complete the twist, look over your right shoulder. Repeat on left side. ',
        time: 10,
        image: 'assets/images/poses/crescentlungewithtwistright.png',
        video: 'assets/images/poses/crescentlungewithtwistright.mp4');
  }

  getExDownwardFacingDog() {
    return Exercise(
        title: 'Downward Facing Dog',
        desc:
            'Start on all fours in a tabletop position with your wrists under your shoulders and fingers spread. Step your feet back into a plank — a high push-up with legs and belly engaged. From there, lift your hips and press your chest towards your legs as you stretch your heels towards the floor. Push the floor away with your hands in order to bring your upper body towards your legs. Root down firmly with the index finger and thumb of each hand and place your feet hips distance apart, with your heels lined up behind your second and third toes. ',
        time: 10,
        image: 'assets/images/poses/downwardfacingdog.png',
        video: 'assets/images/poses/downwardfacingdog.mp4');
  }

  getExEasyPose() {
    return Exercise(
        title: 'Easy Pose',
        desc:
            'Come into a seated position with the buttocks on the floor, then cross the legs, placing the feet directly below the knees. Rest the hands on the knees or the lap with the palms facing up or down. Press the hip bones down into the floor and reach the crown of the head up to lengthen the spine. Drop the shoulders down and back, and press the chest towards the front of the room. Relax the face, jaw, and belly. Let the tongue rest on the roof of the mouth, just behind the front teeth. Breathe deeply through the nose down into the belly. Hold as long as comfortable.',
        time: 10,
        image: 'assets/images/poses/easypose.png',
        video: 'assets/images/poses/easypose.mp4');
  }

  getExForearmPlank() {
    return Exercise(
        title: 'Forearm Plank',
        desc:
            'Lie on your belly and prop yourself up on your elbows so that your forearms are parallel to each other and elbows are shoulders width apart. Tuck your toes under and lift your thighs and pelvis off of the floor. Center your shoulders above your elbows and lift your belly towards your lower back. Engage the fronts of your thighs and draw your pubic bone towards your navel to keep your hips from piking in the air.',
        time: 10,
        image: 'assets/images/poses/forearmplank.png',
        video: 'assets/images/poses/forearmplank.mp4');
  }

  getExGateLeft() {
    return Exercise(
        title: 'Gate (Left)',
        desc:
            'Kneel with your hips above your knees, shins parallel to each other, and tops of the feet on the ground. Step your left foot out to the left side so that the leg is extended and toes point to the left and towards the floor. Place your left palm on your left thigh and extend your right arm alongside the right ear. As you side bend to the left, slide your left hand towards your left ankle. Repeat on right side.',
        time: 10,
        image: 'assets/images/poses/gateleft.png',
        video: 'assets/images/poses/gateleft.mp4');
  }

  getExGateRight() {
    return Exercise(
        title: 'Gate (Right)',
        desc:
            'Kneel with your hips above your knees, shins parallel to each other, and tops of the feet on the ground. Step your right foot out to the right side so that the leg is extended and toes point to the right and towards the floor. Place your right palm on your right thigh and extend your left arm alongside the left ear. As you side bend to the right, slide your right hand towards your right ankle. Repeat on left side.',
        time: 10,
        image: 'assets/images/poses/gateright.png',
        video: 'assets/images/poses/gateright.mp4');
  }

  getExHappyBaby() {
    return Exercise(
        title: 'Happy Baby',
        desc:
            'Lie on your back, bend your knees, and hold on to the outside edges of your feet. Press your hands into your feet to bring your knees towards your armpits and stretch your inner thighs. Keep as much of the lower back on the ground as possible.',
        time: 10,
        image: 'assets/images/poses/happybaby.png',
        video: 'assets/images/poses/happybaby.mp4');
  }

  getExHighPrayerVariation() {
    return Exercise(
        title: 'High Prayer Variation',
        desc:
            'Stand with your feet hips distance apart. Interlace your fingers in front of you, flip your palms to face out, and extend your arms alongside your ears with palms facing the ceiling. Repeat with opposite clasp of the hands.',
        time: 10,
        image: 'assets/images/poses/highprayervariation.png',
        video: 'assets/images/poses/highprayervariation.mp4');
  }

  getExLocustPoseVariation() {
    return Exercise(
        title: 'Locust Pose Variation',
        desc:
            'Lie on your belly with your arms at your sides. Lift your arms off of the ground, turn your palms to face out, and reach back with your thumbs. Lift your chest, head, and legs off of the ground. Point your toes and reach your feet back. ',
        time: 10,
        image: 'assets/images/poses/locustposevariation.png',
        video: 'assets/images/poses/locustposevariation.mp4');
  }

  getExLowLungesLeft() {
    return Exercise(
        title: 'Low Lunges (Left)',
        desc: 'Desc',
        time: 10,
        image: 'assets/images/poses/lowlungesleft.png',
        video: 'assets/images/poses/lowlungesleft.mp4');
  }

  getExLowLungesRight() {
    return Exercise(
        title: 'Low Lunges (Right)',
        desc:
            'On an exhale, step your left foot forward between your hands. Lower down onto your right knee and release the top of the left foot on the ground. Feel free to remain here, with your hands on your knee or both arms up alongside your ears and moving into a backbend. You can take 5 to 10 breaths in staying this pose, or moving dynamically with your torso upward and downward. Tuck your back toes under, plant your palms down on the mat, and position as Downward - Facing Dog. ',
        time: 10,
        image: 'assets/images/poses/lowlungesright.png',
        video: 'assets/images/poses/lowlungesright.mp4');
  }

  getExModifiedSidePlankLeft() {
    return Exercise(
        title: 'Modified Side Plank (Left)',
        desc:
            'Start in a tabletop position on all fours with wrists over shoulders and knees above hips. Step your right foot back and ground its heel so that the toes point to the right. Pivot the left foot behind you so that the top of the foot is grounded and toes point to the left. Stack the right shoulder above the left one as you extend your right arm to the sky. Repeat with left leg extended and right shin grounded.',
        time: 10,
        image: 'assets/images/poses/modifiedsideplankleft.png',
        video: 'assets/images/poses/modifiedsideplankleft.mp4');
  }

  getExModifiedSidePlankRight() {
    return Exercise(
        title: 'Modified Side Plank (Right)',
        desc:
            'Start in a tabletop position on all fours with wrists over shoulders and knees above hips. Step your left foot back and ground its heel so that the toes point to the left. Pivot the right foot behind you so that the top of the foot is grounded and toes point to the right. Stack the left shoulder above the right one as you extend your left arm to the sky. Repeat with right leg extended and left shin grounded. ',
        time: 10,
        image: 'assets/images/poses/modifiedsideplankright.png',
        video: 'assets/images/poses/modifiedsideplankright.mp4');
  }

  getExMountainPose() {
    return Exercise(
        title: 'Mountain Pose',
        desc:
            'Stand with your feet hips distance apart and the outer edges of your feet parallel to each other. Lengthen your spine and lift your navel towards the spine. Press up through the crown of your head and draw your tailbone down towards your heels.',
        time: 10,
        image: 'assets/images/poses/mountainpose.png',
        video: 'assets/images/poses/mountainpose.mp4');
  }

  getExNeckStretch() {
    return Exercise(
        title: 'Neck Stretch',
        desc:
            'Bring your chin down toward your chest and slowly roll it to the right and rest your ear on your right shoulder. Repeat this on the left and slowly roll your head in a clockwise rotation. Do this one time and repeat in a counterclockwise rotation. You should feel this stretch in your neck and upper back.',
        time: 10,
        image: 'assets/images/poses/neckstretch.png',
        video: 'assets/images/poses/neckstretch.mp4');
  }

  getExPlank() {
    return Exercise(
        title: 'Plank',
        desc:
            'Lay on your stomach and push yourself off the ground. Rest your weight on your forearms and keep the body straight from heel to head. Hold the position for the length of the exercise. You can make the exercise easier or harder by varying the position of your forearms.',
        time: 10,
        image: 'assets/images/poses/plank.png',
        video: 'assets/images/poses/plank.mp4');
  }

  getExPrayerPose() {
    return Exercise(
        title: 'Prayer Pose',
        desc:
            'Stand tall with your feet hip-width apart. Press your weight equally throughout your feet. Engage your thigh muscles and lift your kneecaps up. Elongate the spine and bring the palms of your hands together at chest level.',
        time: 10,
        image: 'assets/images/poses/prayerpose.png',
        video: 'assets/images/poses/prayerpose.mp4');
  }

  getExSeatedSideBendLeft() {
    return Exercise(
        title: 'Seated Side Bend (Left)',
        desc:
            'Take a comfortable cross-legged seat with your left leg on top. Plant your right forearm at your right side with fingertips pointing to the right. Keep your left buttock anchored on the ground as you extend your left arm alongside your left ear. Repeat with right leg on top and right arm extended alongside your ear.',
        time: 10,
        image: 'assets/images/poses/seatedsidebendleft.png',
        video: 'assets/images/poses/seatedsidebendleft.mp4');
  }

  getExSeatedSideBendRight() {
    return Exercise(
        title: 'Seated Side Bend (Right)',
        desc:
            'Take a comfortable cross-legged seat with your right leg on top. Plant your left forearm at your left side with fingertips pointing to the left. Keep your right buttock anchored on the ground as you extend your right arm alongside your right ear. Repeat with left leg on top and left arm extended alongside your ear.',
        time: 10,
        image: 'assets/images/poses/seatedsidebendright.png',
        video: 'assets/images/poses/seatedsidebendright.mp4');
  }

  getExSeatedSpinalTwistLeft() {
    return Exercise(
        title: 'Seated Spinal Twist (Left)',
        desc:
            'Take a comfortable cross-legged seat with your palms face down on your kneecaps. As you inhale, lengthen your spine. As you exhale, twist to the left, bringing your left fingertips to the floor behind you and placing your right palm on your left kneecap. Inhale back to center, and as you exhale twist to the right, placing your right fingertips on the floor behind you and resting your left palm on your right kneecap.',
        time: 10,
        image: 'assets/images/poses/seatedspinaltwistleft.png',
        video: 'assets/images/poses/seatedspinaltwistleft.mp4');
  }

  getExSeatedSpinalTwistRight() {
    return Exercise(
        title: 'Seated Spinal Twist (Right)',
        desc:
            'Take a comfortable cross-legged seat with your palms face down on your kneecaps. As you inhale, lengthen your spine. As you exhale, twist to the right, bringing your right fingertips to the floor behind you and placing your left palm on your right kneecap. Inhale back to center, and as you exhale twist to the left, placing your left fingertips on the floor behind you and resting your right palm on your left kneecap.',
        time: 10,
        image: 'assets/images/poses/seatedspinaltwistright.png',
        video: 'assets/images/poses/seatedspinaltwistright.mp4');
  }

  getExShoulderExpansion() {
    return Exercise(
        title: 'Shoulder Expansion',
        desc:
            'Sit on the ground in the easy pose. With your chest lifted and shoulders back, reach behind and interlace your hands to touch. Hold this stretch for a while, pulling your hands further down as much as possible with each breath. You can raise your arms up and down to feel the inner strength.',
        time: 10,
        image: 'assets/images/poses/shoulderexpansion.png',
        video: 'assets/images/poses/shoulderexpansion.mp4');
  }

  getExSideAngleLeft() {
    return Exercise(
        title: 'Side Angle (Left)',
        desc:
            'Take a wide-legged stance with your feet parallel to each other. Turn the left foot out 90 degrees and bend your right knee to a 90 degree angle so that the top of your left thigh is parallel to the ground. Keep your left knee stacked over your left ankle and the right leg extended with toes turned in slightly. Extend the left side of your torso over your left thigh and place your left palm on the ground inside of your left foot, so that your shoulder stacks over your wrist. Reach the right arm straight up to the sky and look up at your right palm. Press the right foot into the ground and keep the left knee centered over your second and third toes. Repeat on right side.',
        time: 10,
        image: 'assets/images/poses/sideangleleft.png',
        video: 'assets/images/poses/sideangleleft.mp4');
  }

  getExSideAngleRight() {
    return Exercise(
        title: 'Side Angle (Right)',
        desc:
            'Take a wide-legged stance with your feet parallel to each other. Turn the right foot out 90 degrees and bend your right knee to a 90 degree angle so that the top of your right thigh is parallel to the ground. Keep your right knee stacked over your right ankle and the left leg extended with toes turned in slightly. Extend the right side of your torso over your right thigh and place your right palm on the ground inside of your right foot, so that your shoulder stacks over your wrist. Reach the left arm straight up to the sky and look up at your left palm. Press the left foot into the ground and keep the right knee centered over your second and third toes. Repeat on left side.',
        time: 10,
        image: 'assets/images/poses/sideangleright.png',
        video: 'assets/images/poses/sideangleright.mp4');
  }

  getExSingleLegDownwardDogLeft() {
    return Exercise(
        title: 'Single Leg Downward Dog (Left)',
        desc:
            'Find a three-legged downward facing dog position by lifting one leg high. And then come in and out of some core strengthening exercises. Keep the hip square and make sure your shoulders are directly over your wrist.',
        time: 10,
        image: 'assets/images/poses/singlelegdownwarddogleft.png',
        video: 'assets/images/poses/singlelegdownwarddogleft.mp4');
  }

  getExSingleLegDownwardDogRight() {
    return Exercise(
        title: 'Single Leg Downward Dog (Right)',
        desc:
            'Find a three-legged downward facing dog position by lifting one leg high. And then come in and out of some core strengthening exercises. Keep the hip square and make sure your shoulders are directly over your wrist.',
        time: 10,
        image: 'assets/images/poses/singlelegdownwarddogright.png',
        video: 'assets/images/poses/singlelegdownwarddogright.mp4');
  }

  getExSpinalRolling() {
    return Exercise(
        title: 'Spinal Rolling',
        desc:
            'Pulling the knees up towards the chest limbers and stretches the hips and lower back. The small of the back (lumbar spinal area) is pressed into the floor. Roll up and down and from side to side upon the lower back. This loosens into the hip joint and massages and stimulates the lower back.',
        time: 10,
        image: 'assets/images/poses/spinalrolling.png',
        video: 'assets/images/poses/spinalrolling.mp4');
  }

  getExStandingForwardFold() {
    return Exercise(
        title: 'Standing Forward Fold',
        desc:
            'Begin in a standing forward fold with your big toes together and outer edges of the feet parallel to each other. Inhale to lengthen your spine, reaching your chest forward as you tent your finger tops on the floor. Exhale as you fold forward, reaching your arms around the outsides of your legs to hold your calves. Press your palms against your calves to leverage your forehead towards your shins. Press your heels against the ground and lift your sitting bones as you rotate the inner thighs towards the backs of the legs. Be careful not to round the lower back. Instead, hinge at the hip creases and drape your belly onto the tops of your thighs.',
        time: 10,
        image: 'assets/images/poses/standingforwardfold.png',
        video: 'assets/images/poses/standingforwardfold.mp4');
  }

  getExStandingSideBend() {
    return Exercise(
        title: 'Standing Side Bend',
        desc:
            'Stand with your big toes together and outer edges of the feet parallel to each other. As you inhale, raise your right arm alongside your ear. As you exhale, side bend to the left, allowing your left hand to slide down the outside of the left leg. Press into the right heel and lift your left waist. Repeat by side bending to the right.',
        time: 10,
        image: 'assets/images/poses/standingsidebend.png',
        video: 'assets/images/poses/standingsidebend.mp4');
  }

  getExTigerLeft() {
    return Exercise(
        title: 'Tiger (Left)',
        desc:
            'Start on all fours with your fingers spread, wrists under your shoulders and knees under your hips. Press into your finger pads and the top of your left foot as you float your right leg off of the floor and extend it behind you. Lift your belly and your front ribs towards your back. Repeat with right shin grounded and left leg lifted.',
        time: 10,
        image: 'assets/images/poses/tigerleft.png',
        video: 'assets/images/poses/tigerleft.mp4');
  }

  getExTigerRight() {
    return Exercise(
        title: 'Tiger (Right)',
        desc:
            'Start on all fours with your fingers spread, wrists under your shoulders and knees under your hips. Press into your finger pads and the top of your right foot as you float your left leg off of the floor and extend it behind you. Lift your belly and your front ribs towards your back. Repeat with left shin grounded and right leg lifted.',
        time: 10,
        image: 'assets/images/poses/tigerright.png',
        video: 'assets/images/poses/tigerright.mp4');
  }

  getExTreeLeft() {
    return Exercise(
        title: 'Tree (Left)',
        desc:
        'Start with the Mountain Pose and then shift your weight on the right foot. Raise your left foot and place the sole on the right shank and try to balance yourself in this position by extending your arms. Keep your neck and spine straight and hold this position for a while. Repeat on the other side.',
        time: 30,
        image: 'assets/images/poses/treeleft.png',
        video: 'assets/images/poses/treeleft.mp4');
  }

  getExTreeRight() {
    return Exercise(
        title: 'Tree (Right)',
        desc:
        'Start with the Mountain Pose and then shift your weight on the left foot. Raise your right foot and place the sole on the left shank and try to balance yourself in this position by extending your arms. Keep your neck and spine straight and hold this position for a while. Repeat on the other side.',
        time: 30,
        image: 'assets/images/poses/treeright.png',
        video: 'assets/images/poses/treeright.mp4');
  }

  getExTwistedChairLeft() {
    return Exercise(
        title: 'Twisted Chair (Left)',
        desc:
            'Stand with your big toes together and outer edges of the feet parallel to each other. Bend your knees and join your palms in front of your chest. Inhale as you lengthen your spine, keeping the hips low. As you exhale, twist to the left and hook your right elbow outside of your left thigh. Inhale back to center with your palms in a prayer position in front of your chest. Exhale as you counter-twist to the right',
        time: 10,
        image: 'assets/images/poses/twistedchairleft.png',
        video: 'assets/images/poses/twistedchairleft.mp4');
  }

  getExTwistedChairRight() {
    return Exercise(
        title: 'Twisted Chair (Right)',
        desc:
            'Stand with your big toes together and outer edges of the feet parallel to each other. Bend your knees and join your palms in front of your chest. Inhale as you lengthen your spine, keeping the hips low. As you exhale, twist to the right and hook your left elbow outside of your right thigh. Inhale back to center with your palms in a prayer position in front of your chest. Exhale as you counter-twist to the left',
        time: 10,
        image: 'assets/images/poses/twistedchairright.png',
        video: 'assets/images/poses/twistedchairright.mp4');
  }

  getExWarriorI() {
    return Exercise(
        title: 'Warrior I',
        desc:
        'Take a wide-legged stance with your feet parallel to each other. Turn the right foot out 90 degrees. Raise the left heel and, pivoting on the ball of the left foot, spin the heel out to the left before planting it on the floor. Your chest and left hip should now be facing the same direction as your right foot. Bring your hands to your outer hips and wrap the left hip forward as you steer the right hip back. Bend your right knee so that it stacks above the ankle. Extend your arms alongside your ears and lift your chest. Press into your left heel while keeping the right knee centered over the ankle. Repeat with left foot forward.',
        time: 30,
        image: 'assets/images/poses/warriori.png',
        video: 'assets/images/poses/warriori.mp4');
  }

  getExWarriorIILeft() {
    return Exercise(
        title: 'Warrior II (Left)',
        desc:
            'Take a wide-legged stance with your feet parallel to each other. Turn the right foot out 90 degrees and bend your right knee to a 90 degree angle so that the top of your right thigh is parallel to the ground. Keep your right knee stacked over your right ankle and the left leg extended with toes turned in slightly. Keep your shoulders aligned above your hips as you extend your arms in opposite directions and look over your right palm. Repeat with left knee bent and right leg straight, gazing over your left palm.',
        time: 10,
        image: 'assets/images/poses/warrioriileft.png',
        video: 'assets/images/poses/warrioriileft.mp4');
  }

  getExWarriorIIRight() {
    return Exercise(
        title: 'Warrior II (Right)',
        desc:
            'Take a wide-legged stance with your feet parallel to each other. Turn the right foot out 90 degrees and bend your right knee to a 90 degree angle so that the top of your left thigh is parallel to the ground. Keep your left knee stacked over your left ankle and the right leg extended with toes turned in slightly. Keep your shoulders aligned above your hips as you extend your arms in opposite directions and look over your left palm. Repeat with right knee bent and left leg straight, gazing over your right palm.',
        time: 10,
        image: 'assets/images/poses/warrioriiright.png',
        video: 'assets/images/poses/warrioriiright.mp4');
  }

  getExWarriorIIILeft() {
    return Exercise(
        title: 'Warrior III (Left)',
        desc:
            'Stand with your feet together and raise your arms alongside your ears. Keeping your right leg straight and your chest lifted, step the left foot back so that the ball of the foot is lightly resting on the floor. Slowly shift your weight into your right foot, hinge forward at the right hip crease, and reach your chest forward as you float the left leg behind you. Hug your outer hips towards each other and lift your belly/front ribs in towards your back. Repeat balancing on left leg with right leg extended behind you.',
        time: 10,
        image: 'assets/images/poses/warrioriiileft.png',
        video: 'assets/images/poses/warrioriiileft.mp4');
  }

  getExWarriorIIIRight() {
    return Exercise(
        title: 'Warrior III (Right)',
        desc:
            'Stand with your feet together and raise your arms alongside your ears. Keeping your left leg straight and your chest lifted, step the right foot back so that the ball of the foot is lightly resting on the floor. Slowly shift your weight into your left foot, hinge forward at the left hip crease, and reach your chest forward as you float the right leg behind you. Hug your outer hips towards each other and lift your belly/front ribs in towards your back. Repeat balancing on right leg with left leg extended behind you.',
        time: 10,
        image: 'assets/images/poses/warrioriiiright.png',
        video: 'assets/images/poses/warrioriiiright.mp4');
  }

  getExWindRelievingPoseVariationLeft() {
    return Exercise(
        title: 'Wind - Relieving Pose Variation (Left)',
        desc:
            'Lie on your back with your legs extended on the ground. Draw your left knee in towards your chest and interlace your fingers outside of your leg. Repeat with left leg extended and right knee bent.',
        time: 10,
        image: 'assets/images/poses/windrelievingposevariationleft.png',
        video: 'assets/images/poses/windrelievingposevariationleft.mp4');
  }

  getExWindRelievingPoseVariationRight() {
    return Exercise(
        title: 'Wind - Relieving Pose Variation (Right)',
        desc:
            'Lie on your back with your legs extended on the ground. Draw your right knee in towards your chest and interlace your fingers outside of your leg. Repeat with right leg extended and leftt knee bent.',
        time: 10,
        image: 'assets/images/poses/windrelievingposevariationright.png',
        video: 'assets/images/poses/windrelievingposevariationright.mp4');
  }

  getExYogaSquat() {
    return Exercise(
        title: 'Yoga Squat',
        desc:
            'Stand with your feet slightly wider than your hips, toes turned out. Bend your knees and lower your seat towards the floor in between your heels. Join your palms in front of your chest in a prayer position and place your elbows against the insides of your thighs. Press the elbows against the inner thighs as the thighs push back against the elbows. Lengthen your spine so that the crown of the head lifts and the tailbone descends. Eventually, you may be able to bring the outer edges of the feet parallel to each other.',
        time: 10,
        image: 'assets/images/poses/yogasquat.png',
        video: 'assets/images/poses/yogasquat.mp4');
  }
}

class YogaTips {
  Future<List<YogaTip>> getYogaTips() async {
    List<YogaTip> tips = [
      YogaTip(title: 'Keep a practical journal',
          desc: 'Yoga Classes are full of little comments and insights that smooth over life\'s rough edges and change the way we see ourselves. But today\'s \'aha!\' experience is ofeten swept away in floot of tomorrow\'s activities. Write it down.\nA spiral-bound blank book is a great place for recording thoughts about your practice, even if some of your insights turn out to be less than cosmic. use your notebook to make observations about the classes you are taking.\nCompile lists of postures - the ones you know and the ones that you are learning. List new terms that you think you would like to remember. Write down questions that come up in meditation. You get the idea.'),
      YogaTip(title: 'Become an artist',
          desc: 'Drawing stick figures is a great way to summarize information and remember the fine points about a posture.\'Mr. Stick\'(or \'Mr. Peanut\' if you are a bit more talented) takes only moments to sketch.\nHighlight your drawing with arrows and important cues. Small figures can be used to create short sequences (vunyasas) and even longer practice routines. Of course, if you are a computer whiz you might consider scanning digital photos of postures into your computer and manipulating the images on screen. But then you\'ll miss the fun of creating the image yourself.'),
      YogaTip(title: 'Make space in your home',
          desc: 'By practicing in the same place at home you create a groove in your mind - memory of past day\'s experiences makes it easier to begin today. Store props nearby so that getting started doesn\'t require a lot of running around. An inspiring image or statue, an Oriental carpet, or a specially selected cushion can mark this place as special.'),
      YogaTip(title: 'Define your practice',
          desc: 'The practice routine you create depeds a good deal on you. Define the time you have available for practice, the technique you would like to foucus on, and the balance among meditation, breathing, and Asana practices.\nThen consider the details. Are you clear about the order of your practice and the methods you are using? Are there aspects of an Asana that need attention or that intrigue you? If a posture or any other practice seems too difficult, could you break it down, or preapre for it with less challenging technique?\nWhat are the steps in the relaxation or meditation methods you have learned? If you have questions, make sure to ask your teacher for help.'),
      YogaTip(title: 'Invest in a sticky mat',
          desc: 'This may seem like a minor matter, but the security that comes from firm footing is hart to overrate. If you have never tried a mat, borrow a friend\'s so that you can feel the difference it makes in any of the spread-legged postures and in the downward-facing dog pose. Once you\'ve tried it, you\'ll probably want your own.'),
      YogaTip(title: 'Balance the postures with relaxation/meditation',
          desc: 'These days most yoga classes heavily emphasize Asana practice. Some teachers may not include relaxation or meditation in the class routine at all. But don\'t neglect them. you need to relax; it will help you feel better; and once you have begin to relax or meditate regularly, the experience will transform you.\nMany students are attracted to yoga rimarily in order to meditate; thers are focused on physical health and are not aware of the importance of meditatnce of meditation.\nWorking with the body or mind alone is usually not enough to create the inner strength and equilibrium we hope for. A balanced combination of Asana practice and mental centering will engender a sense of well-being.'),
      YogaTip(title: 'Build a small library of books and videos',
          desc: 'Yoga videos are invaluable. They offer experience with different styles of yoga as well as different levels of practice. And audio recordings is a great way to internalize the relaxation and meditation practice of your choice.\n\nIn addition, a library of a dozen or so yoga-related books will provide a lifelong source of information. My choices would include two to three manual-style books offering practice suggestions and an overview of Yoga.'),
      YogaTip(title: 'Learn to sound out Sanskrit words(If you like it)',
          desc: 'Sanskrit is an elegand language and it container technical terms as well as historical names that have been associated with yoga for millennia. It\'s an orderly language too, and once you have learned the basics of pronunciation your days of mumbling the soundes will be over.'),
      YogaTip(title: 'Take breathing breaks',
          desc: 'Breathing is a powerful tool for managing stress. And while a few moments of breath awareness can definitaly short-circuit a fit of anger or a moment of anxiety, you might consider extending your breathing breaks and using them on a more regular basis-refreshing yourself for a few minutes or longer once or twice every day.'),
      YogaTip(title: 'Let the practices do their work',
          desc: 'In the midst of a posture or relaxation exercise it\'s easy to feel you should be doing something. And certainly it\'s important to make the effort to master a practice. But trying too hard can get in the way just as much as not giving enough effort.\n        So a god question to ask in the middle of any pracice is \'Am I letting the posture do it\'s work?\' Try it the next time you practice the relaxation posture, Shavasana. Let the posture do it\'s work.'),
    ];
    return tips;
  }
}