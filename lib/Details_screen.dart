import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_33/model_list.dart';

class DetailsScreen extends StatelessWidget {
  final Details detail;
  const DetailsScreen({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text(
          'Photo Details',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 79,right: 26,left: 26,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(detail.url),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Text('Title:  '+detail.title),
                  Text('ID: ' + detail.id.toString()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
