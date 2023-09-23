import 'package:flutter/material.dart';
import 'package:route_courses/CourseDetails/full_stack_course.dart';
import 'package:route_courses/CourseDetails/ios_course.dart';
import 'package:route_courses/splash_screen.dart';
import 'CourseDetails/android_course.dart';

main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(height: 40),
        coursePhoto('assets/Android.jpeg', 'ANDROID', context, AndroidCourse()),
        coursePhoto('assets/IOS.jpeg', 'IOS', context, IosCourse()),
        coursePhoto(
            'assets/fullStack.jpeg', 'FULL STACK', context, FullStackCourse())
      ],
    ));
  }

  Widget coursePhoto(String coursePhotoPath, String textOfButton,
      BuildContext context, Widget screen) {
    return Column(
      children: [
        Image(
          image: AssetImage(coursePhotoPath),
          width: double.infinity,
          height: 160,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 40,
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: ElevatedButton(
                    onPressed: () {
                      navigationToCourseDetails(context, screen);
                    },
                    style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(16, 74, 209, 1))),
                    child: Text(
                      '$textOfButton COURSE',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )))),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }

  void navigationToCourseDetails(BuildContext context, Widget screen) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }

  static Widget showCourseDetails(
      String imagePath, List<String> courseContent) {
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            'assets/Bg.jpg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
              padding: const EdgeInsets.only(
                  top: 46, right: 16, left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(imagePath),
                  Expanded(
                      child: ListView.builder(
                          itemCount: courseContent.length,
                          itemBuilder: (context, index) {
                            return Text(
                              courseContent[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            );
                          }))
                ],
              ))
        ],
      ),
    );
  }
}
