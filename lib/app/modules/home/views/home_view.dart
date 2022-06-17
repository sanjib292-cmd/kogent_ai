import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:kogent_ai/app/modules/nextPage/views/next_page_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('HomeView'),
            centerTitle: true,
          ),
          body:context.isPhone? Center(
            child: Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
          ):Column(
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(NextPageView());
                },
                child: Container(height: MediaQuery.of(context).size.height/2,width:MediaQuery.of(context).size.width/2,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(image: NetworkImage('https://blog.instabug.com/wp-content/uploads/2020/02/AppDev_Flutter-Apps.png',),fit: BoxFit.cover),
                ),),
              ),
              Center(
                child: Text(
                  'HomeViewWeb is working',
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
