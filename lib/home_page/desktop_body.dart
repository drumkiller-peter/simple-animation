import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MOBILE SCREEN"),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      // height: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
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
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
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
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                    height: 70,
                    color: Colors.purpleAccent[300],
                    child: Row(
                      children: [
                        Text(
                          "Hello world $index",
                          style:
                              TextStyle(fontSize: 20.sp, color: Colors.black),
                        ),
                        Icon(
                          Icons.video_call_outlined,
                          size: 20.sp,
                        ),
                      ],
                    )),
                separatorBuilder: (_, __) => Container(
                  color: Colors.pink,
                  height: 20.h,
                  width: 20.w,
                ),
                itemCount: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
