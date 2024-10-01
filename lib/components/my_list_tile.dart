import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData leading;
  final String title;
  final void Function()? onTap;
  const MyListTile({super.key, required this.leading, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0),
      child: ListTile(
        leading: Icon(leading, color: Colors.grey,),
        title: Text(title),
        onTap: onTap,
      ),
    );
  }
}