import 'package:flutter/material.dart';
import 'package:whats_app/models/home_model.dart';

class BulidBody extends StatelessWidget {
  const BulidBody({
    super.key,
    required this.homeModel,
  });
  final HomeModel homeModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(homeModel.image),
        maxRadius: 25,
      ),
      title: Text(
        homeModel.title,
      ),
      subtitle: Text(homeModel.subTitle),
      trailing: const Text('today'),
    );
    ;
  }
}
