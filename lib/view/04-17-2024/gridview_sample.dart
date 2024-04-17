import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewSample extends StatefulWidget {
  const GridViewSample({super.key});

  @override
  State<GridViewSample> createState() => _GridViewSampleState();
}

class _GridViewSampleState extends State<GridViewSample> {
  final colorlist=[100,600,900];
  final images=['https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
    'https://picsum.photos/250?image=9',
    'https://logowik.com/content/uploads/images/flutter5786.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: colorlist.length,
        itemBuilder: (context, index) {
          return Container(
            child: Image.network(images[index]),
            width: 100.w,height: 100.h,
            color: Colors.red[colorlist[index]],
          );
        },
        // children: [
        //   Container(
        //     width: 100.w,height: 100.h,
        //     color: Colors.red,
        //   ),
        //   Container(
        //     width: 100.w,height: 100.h,
        //     color: Colors.blue,
        //   ),
        //   Container(
        //     width: 100.w,height: 100.h,
        //     color: Colors.pink,
        //   ),
        //
        // ],
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 5,crossAxisSpacing: 5)
      ),
    );
  }
}
