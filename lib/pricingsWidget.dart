import 'package:flutter/material.dart';

class PricingsWidget extends StatelessWidget {
  final String title;
  final String description;
  final String price;

  PricingsWidget({this.title, this.description, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 5,
      color: Colors.teal,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          decoration: BoxDecoration(border: Border.all(width: 2,), borderRadius: BorderRadius.circular(10.0)),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
              Text(description, style: TextStyle(fontSize: 14, color: Colors.white),),
              Divider(color: Colors.black,),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text("هزینه: $price", style: TextStyle(color: Colors.white70),),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
