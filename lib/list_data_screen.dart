import 'package:flutter/material.dart';
import 'package:flutter_application_33/Details_screen.dart';
import 'package:flutter_application_33/model_list.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text('Photo Gallery App',
        style: TextStyle(
          color: Colors.white
        ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getDetails(),
                builder: (context, AsyncSnapshot<List<Details>> snapshot) {
                  return ListView.builder(
                      itemCount: DetailsList.length,
                      itemBuilder: (context, index) {
                        Details details = snapshot.data![index];
                        return ListTile(
                          leading: Image.network(
                              snapshot.data![index].url.toString()),
                          title: Text(snapshot.data![index].title.toString()),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(detail: details)));
                          },
                        );
                      });
                }),
          )
        ],
      ),
    );
  }
}
