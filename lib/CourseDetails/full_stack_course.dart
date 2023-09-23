import 'package:flutter/material.dart';
import 'package:route_courses/main.dart';

class FullStackCourse extends StatelessWidget {
  FullStackCourse({Key? key}) : super(key: key);
  List<String> fullStackCourseDetails = [
    '•HTML',
    '•HTML 5',
    '•CSS',
    '•CSS3',
    '•SASS',
    '•Bootstrap 4',
    '•JavaScript',
    '•Regular expressions',
    '•ECMAScript 6',
    '•JQuery',
    '•angular 7',
    '•fabric.js',
    '•AJAX',
    '•JSON',
    '•Hosting and domains',
    '•Freelancing tips and tricks',
    '•PHP',
    '•MYSQL',
    '•MYSQL advanced queries and triggers',
    '•OOP',
    '•Design Patterns',
    '•MVC',
    '•laravel',
    '•build Api , Api authentication',
    '•connect wordpress with laravel',
    '•build wordpress web service',
    '•agile',
    '•Scrum',
    '•Software development process',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeScreen.showCourseDetails(
            'assets/fullStack.jpeg', fullStackCourseDetails));
  }
}
