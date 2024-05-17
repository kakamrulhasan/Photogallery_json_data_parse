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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(detail.url),
            Column(
              children: [
                Text(detail.title),
                Text('ID:' + detail.id.toString()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
