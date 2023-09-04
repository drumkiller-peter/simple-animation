import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/animation_example/animation_example.dart';
import 'package:responsive_ui/animation_example/animation_example2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (_, __) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.deepPurple,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            // home: const HomePage(),
            // home: const MySomeScreen(),
            // home: const ResponsiveLayoutExample(),
            home: const AnimationExample2(),
          );
        });
  }
}

class MySomeScreen extends StatelessWidget {
  const MySomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // "$deviceWidth $screenHeight",

          deviceWidth < 500 ? "Less than 500" : "More then 500",
        ),
      ),
    );
  }
}
