import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/next_page_controller.dart';

class NextPageView extends GetView<NextPageController> {
  const NextPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('NextPageView'),
            centerTitle: true,
          ),
          body:context.isPhone? Center(
            child: Text(
              'NextPageView is working',
              style: TextStyle(fontSize: 20),
            ),
          ):Center(
            child: Container(color: Colors.pink,child: Text('Hello world'),),
          ),
        );
      }
    );
  }
}
