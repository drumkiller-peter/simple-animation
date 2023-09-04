import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MOBILE SCREEN"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                // height: 200,
                color: Colors.red,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                height: 70,
                color: Colors.red[300],
                child: Text(
                  "Hello world $index",
                  style:  TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              separatorBuilder: (_, __) => const SizedBox(
                height: 20,
              ),
              itemCount: 30,
            )
          ],
        ),
      ),
    );
  }
}
