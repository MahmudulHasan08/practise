import 'package:flutter/material.dart';
import 'package:practice/helper/connection.dart';
import 'package:practice/model/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Get>? get;
  getData() async {
    get = await Helper().apiGetData();
    print(get);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            child: ListView.builder(itemBuilder: (_, index) {
              return Card(
                child: ListTile(
                  title: Text(get![index].id),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
