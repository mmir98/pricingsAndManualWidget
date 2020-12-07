import 'package:flutter/material.dart';
import 'CustomExpansionTile.dart';

class ManualWidget extends StatelessWidget {
  final String title;
  final List<Map<String, Object>> entries;

  ManualWidget({this.title, this.entries});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        // decoration: BoxDecoration(border: Border.all(width: 1)),
        padding: const EdgeInsets.all(2.0),
        child: CustomExpansionTile(
          backgroundColor: Colors.teal,
          childrenPadding: EdgeInsets.all(16),
          title: Text(
            title,
          ),
          children: [
            ...entries
                .map(
                  (e) => _ManualEntries(
                    title: e['title'],
                    description: e['description'],
                    imgPath: e['image'],
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}

class _ManualEntries extends StatelessWidget {
  final String title;
  final String description;
  final String imgPath;

  _ManualEntries({this.title, this.description, this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 5.0,
                  spreadRadius: 0.0,
                  offset: Offset(0.0, 0.0))
            ],
          ),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Text(
            description,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Image.network(imgPath),
        Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
