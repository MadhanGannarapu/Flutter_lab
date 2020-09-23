
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final title;
  const HomeCard({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _blurColor = Colors.grey.withOpacity(0.1);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(color: _blurColor, spreadRadius: 4, blurRadius: 4),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.folder,
                color: Colors.blueGrey,
                size: 40,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.blueGrey,
                size: 20,
              )
            ],
          ),
          Text(
            title ?? '',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
