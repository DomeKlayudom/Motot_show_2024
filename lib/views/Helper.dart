import 'package:flutter/material.dart';

class CMHelper {
  listViewData(BuildContext context, String imageFileName, String headerText,
      String bodyText) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 17),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/$imageFileName',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          headerText,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '$bodyText฿',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  myAppBar(String text) {
    return AppBar(
      title: Text(text),
      centerTitle: true,
      backgroundColor: Colors.grey[400],
    );
  }
}
