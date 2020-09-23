import 'package:flutter/material.dart';
import 'package:flutter_lab/widgets/home_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _black = Colors.black;
    Color _white = Colors.white;
    Color _grey = Colors.grey;
    
    return Scaffold(
      backgroundColor: _white,
      appBar: AppBar(
        backgroundColor: _white,
        centerTitle: false,
        elevation: 0,
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: _black,
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: _grey,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          HomeCard(title: 'Buttons'),
          HomeCard(title: 'Container'),
          HomeCard(title: 'Appbar'),
          HomeCard(title: 'Listview'),
          HomeCard(title: 'Custom Painter'),
        ],
      ),
    );
  }
}
