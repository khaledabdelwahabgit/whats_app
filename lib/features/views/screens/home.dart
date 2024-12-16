import 'package:flutter/material.dart';

import 'package:whats_app/features/widget/bulid_body.dart';
import 'package:whats_app/models/home_model.dart';

import '../../widget/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'المحادثات'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'المكالمات'),
            BottomNavigationBarItem(
                icon: Icon(Icons.circle_notifications), label: 'الحاله'),
          ]),
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('واتساب'),
            actions: [
              const Icon(Icons.camera),
              const SizedBox(
                width: 15,
              ),
              const Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      height: 20,
                      child: Text(
                        'جميع الرسائل',
                        style: style(),
                      )),
                ];
              })
            ],
          ),
          body: ListView.builder(
              itemCount: list.length,
              itemBuilder: ((context, index) {
                return BulidBody(homeModel: list[index]);
              }))),
    );
  }
}
