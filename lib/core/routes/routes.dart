import 'dart:io';

import 'package:flutter/material.dart';

import '../../features/examine/presentation/pages/examine/examine_page.dart';
import '../../features/home/presentation/pages/home/home_page.dart';
import '../../features/reading/presentation/pages/reading/reading_page.dart';

class Routes{
  static Route<dynamic>? onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) {
          return const HomePage();
        });
      case "/reading/soil":
        return MaterialPageRoute(builder: (context) {
          return  const ReadingPage(readingJson: "soil");
        });
      case "/reading/disease":
        return MaterialPageRoute(builder: (context) {
          return  const ReadingPage(readingJson: "disease");
        });
      case "/reading/pest":
        return MaterialPageRoute(builder: (context) {
          return  const ReadingPage(readingJson: "pest");
        });
      case "/examine":
        if(settings.arguments is File){
          File image = settings.arguments as File;
          return MaterialPageRoute(builder: (context) {
            return ExaminePage(imageFile: image);
          });
        }
    }
    return null;
  }
}